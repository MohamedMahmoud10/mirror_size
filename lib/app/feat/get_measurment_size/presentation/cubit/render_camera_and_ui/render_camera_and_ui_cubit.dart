import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image/image.dart' as img;
import 'package:tilt/tilt.dart';

part 'render_camera_and_ui_state.dart';

class RenderCameraAndUiCubit extends Cubit<RenderCameraAndUiState> {
  RenderCameraAndUiCubit() : super(RenderCameraAndUiInitial());
  Duration captureDuration = const Duration(seconds: 5);
  double tiltAngle = 90;
  bool isTimerActive = false; // To check if the timer has already started
  int? secondsLeft;
  List<CameraDescription> cameras = [];
  CameraController? controller;
  Timer? captureTimer;

  Future<void> initializeCamera() async {
    try {
      cameras = await availableCameras();
      controller = CameraController(
        cameras[1],
        ResolutionPreset.max,
        imageFormatGroup: ImageFormatGroup.bgra8888,
      );
      await controller!.initialize();
      emit(RenderCameraInitCameraState());
      startTiltListener();
    } on CameraException catch (e) {
      debugPrint("${e.code} ${e.description}");
    }
  }

  Future<void> takePhotoAndSend() async {
    try {
      if (controller != null) {
        // Capture front photo
        final XFile frontPhoto = await controller!.takePicture();
        debugPrint('Front photo captured: ${frontPhoto.path}');

        // Capture side photo
        final XFile sidePhoto = await controller!.takePicture();
        debugPrint('Side photo captured: ${sidePhoto.path}');

        // Compress the images
        final File compressedFrontPhoto =
            await compressImage(File(frontPhoto.path), 0.6);
        final File compressedSidePhoto =
            await compressImage(File(sidePhoto.path), 0.6);
        // Send the request with the compressed images
      }
    } catch (e) {
      debugPrint('Error capturing photos: $e');
    }
  }

  void printInChunks(String str) {
    const chunkSize = 500;
    for (var i = 0; i < str.length; i += chunkSize) {
      var end = i + chunkSize;
      if (end > str.length) end = str.length;
      debugPrint(str.substring(i, end));
    }
  }

  Future<File> compressImage(File imageFile, double quality) async {
    final image = img.decodeImage(imageFile.readAsBytesSync())!;

    // Convert quality to an integer (0.6 -> 60)
    final int compressedQuality = (quality * 100).toInt();

    final compressedImage = img.encodeJpg(image, quality: compressedQuality);

    final compressedFile =
        File(imageFile.path.replaceAll('.jpg', '_compressed.jpg'));
    await compressedFile.writeAsBytes(compressedImage);

    return compressedFile;
  }

  void startTiltListener() {
    DeviceTilt(
      initialTilt: const Tilt(90, 90),
    ).stream.listen((tilt) {
      final newTiltAngle = tilt.xRadian * (180 / 3.14159265359);

      if (newTiltAngle != tiltAngle) {
        // Only emit a new state if the tilt angle has changed
        tiltAngle = newTiltAngle;

        if (tiltAngle >= 86 && tiltAngle <= 90 && !isTimerActive) {
          captureTimer?.cancel();
          isTimerActive = true;
          secondsLeft = 5;
          captureTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
            emit(
              CaptureInProgressState(
                secondsLeft: secondsLeft != null ? secondsLeft! - 1 : null,
              ),
            );

            if (secondsLeft! <= 0) {
              timer.cancel();
              takePhotoAndSend();
              isTimerActive = false;
              secondsLeft = null;
              emit(
                RenderCameraAndUiLoadedState(),
              ); // Emit a new state when capture is complete
            }
          });
        } else if (tiltAngle < 86 || tiltAngle > 90) {
          // Cancel the capture timer if the tilt goes out of range
          captureTimer?.cancel();
          isTimerActive = false; // Reset timer state
        }

        emit(RenderTlitState());
      }
    });
  }

  Future<void> sendRequestWithImages(
    File compressedFrontImage,
    File compressedSideImage,
  ) async {
    final frontImageBytes = compressedFrontImage.readAsBytesSync();
    final sideImageBytes = compressedSideImage.readAsBytesSync();

    final base64FrontImage = base64Encode(frontImageBytes);
    final base64SideImage = base64Encode(sideImageBytes);
  }
}
