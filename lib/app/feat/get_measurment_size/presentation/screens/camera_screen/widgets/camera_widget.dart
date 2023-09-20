import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image/image.dart' as img;
import 'package:mirror_size/app/feat/custom_products/presentation/screens/customize_kandora_screen/customize_kandora_screen.dart';
import 'package:mirror_size/app/feat/get_measurment_size/domain/entity/get_measurement_request_entity.dart';
import 'package:mirror_size/app/feat/get_measurment_size/presentation/cubit/get_measurement/get_user_measurement_cubit.dart';
import 'package:mirror_size/app/feat/get_measurment_size/presentation/cubit/get_measurement/get_user_measurement_state.dart';
import 'package:mirror_size/app/feat/get_user_measurement_from_mirroir_size/presentation/screens/kota.dart';
import 'package:mirror_size/core/const/app_strings.dart';
import 'package:mirror_size/core/const/cache_strings.dart';
import 'package:mirror_size/core/di/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tilt/tilt.dart'; // Import the image package

class CameraWidget extends StatefulWidget {
  const CameraWidget({super.key});

  @override
  _CameraWidgetState createState() => _CameraWidgetState();
}

class _CameraWidgetState extends State<CameraWidget> {
  List<CameraDescription> cameras = [];
  CameraController? controller;
  Timer? captureTimer;
  Duration captureDuration = const Duration(seconds: 5);
  double tiltAngle = 90;
  bool isTimerActive = false; // To check if the timer has already started
  int? secondsLeft;
  int step =
  1; // Track the current step (1 for first photo, 2 for second photo)
  double dynamicAngle = 0.0; // Initialize with a default value
  bool isFirstPhotoTaken = false;
  bool isSecondPhotoTaken = false;
  String? frontPhotoPath;
  String? sidePhotoPath;
  bool isSecondPhotoInProgress = false; // Add this flag
  bool isAlertActive = false; // Add this new flag
  bool isCapturing = false; // Add this flag
  bool isTiltInRange = false; // Add this flag

  void showAlertDialog() {
    if (!isTiltInRange) {
      // Show the alert dialog when the phone tilt is not in the specified range
      if (!isAlertActive) {
        isAlertActive = true; // Set the flag to true before showing the alert

        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) => const InstructionsAlertDialog(),
        );
      }
    } else {
      // Dismiss the alert dialog if it's currently active
      if (isAlertActive) {
        Navigator.of(context).pop();
        isAlertActive = false; // Reset the flag after dismissing the alert
      }
    }
  }

  @override
  void initState() {
    super.initState();
    initializeCamera();
  }

  StreamSubscription<Tilt>? tiltSubscription;

  Future<void> initializeCamera() async {
    try {
      cameras = await availableCameras();
      controller = CameraController(
          cameras[0], ResolutionPreset.max, // Adjust the resolution preset
          imageFormatGroup: ImageFormatGroup.jpeg,
          enableAudio: true);
      await controller!.initialize();
      setState(() {});
      startTiltListener();
    } on CameraException catch (e) {
      debugPrint('${e.code} ${e.description}');
    }
  }

  void startTiltListener() {
    DeviceTilt(
      initialTilt: const Tilt(90, 90),
    ).stream.listen((tilt) {
      if (!mounted) return;
      tiltAngle = tilt.xRadian * (180 / 3.14159265359);
      isTiltInRange = tiltAngle >= 86 && tiltAngle <= 90;
      if (isAlertActive && isTiltInRange) {
        Navigator.of(context).pop();
        isAlertActive = false; // Reset the flag after dismissing the alert
      }

      if (!isTiltInRange) {
        showAlertDialog();
      }
      if (tiltAngle >= 86 && tiltAngle <= 90 && !isTimerActive && step == 1) {
        dynamicAngle = tilt.xRadian * (180 / 3.14159265359);
        captureTimer?.cancel();
        isTimerActive = true;
        secondsLeft = 5;
        captureTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
          if (!mounted) return;
          setState(() {
            secondsLeft = secondsLeft != null ? secondsLeft! - 1 : null;
            if (secondsLeft! <= 0) {
              if (step == 1) {
                takeFirstPhoto();
              } else if (step == 2) {
                takeSecondPhoto();
              }
              timer.cancel();
              isTimerActive = false;
              secondsLeft = null;
            }
          });
        });
      } else if (tiltAngle >= 86 &&
          tiltAngle <= 90 &&
          !isTimerActive &&
          step == 2 &&
          // hasAlertBeenShown &&
          !isAlertActive) {
        // Capture the second photo only if it hasn't been taken yet
        if (!isSecondPhotoTaken) {
          captureTimer?.cancel();
          isTimerActive = true;
          secondsLeft = 5;
          captureTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
            setState(() {
              secondsLeft = secondsLeft != null ? secondsLeft! - 1 : null;
              if (secondsLeft! <= 0) {
                timer.cancel();
                takeSecondPhoto();
                isTimerActive = false;
                secondsLeft = null;
              }
            });
          });
        }
      } else if (tiltAngle < 86 || tiltAngle > 90) {
        captureTimer?.cancel();
        isTimerActive = false;
      }
      setState(() {});
    });
  }

  // Future<void> playCaptureSound() async {
  //   final audioPlayer = AudioPlayer();
  //   final soundFilePath = 'assets/sounds/capture_sound.mp3'; // Adjust the path to your audio file
  //   final result = await audioPlayer.play(soundFilePath, isLocal: true);
  //   if (result == 1) {
  //     // Successfully started playing the audio
  //   } else {
  //     // Failed to play the audio
  //   }
  // }
  Future<void> takeFirstPhoto() async {
    // Capture front photo (first photo)
    try {
      if (controller != null) {
        setState(() {
          isCapturing = true; // Set isCapturing to true when capturing starts
        });

        final frontPhoto = await controller!.takePicture();
        frontPhotoPath = frontPhoto.path;

        debugPrint('Front photo captured (first): ${frontPhoto.path}');

        // Set the flag to indicate that the first photo has been taken
        setState(() {
          isFirstPhotoTaken = true;
          isCapturing =
          false; // Set isCapturing to false when capturing is completed
        });

        // Dispose the camera and cancel the timer

        // Reset the UI and prepare for the second photo
        setState(() {
          step = 2;
          isTimerActive = false;
          secondsLeft = null;
          // initializeCamera();
        });
        // controller?.dispose();
        captureTimer?.cancel();
        await initializeCamera();
        // showReadyForSecondPhotoAlert();
      }
    } catch (e) {
      debugPrint('Error capturing first photo: $e');
    }
  }

  Future<void> takeSecondPhoto() async {
    try {
      if (controller != null && !isSecondPhotoInProgress) {
        setState(() {
          isCapturing = true; // Set isCapturing to true when capturing starts
        });
        final sidePhoto = await controller!.takePicture();
        sidePhotoPath = sidePhoto.path;
        debugPrint('Side photo captured (second): ${sidePhoto.path}');

        setState(() {
          isSecondPhotoTaken = true;
          isCapturing =
          false; // Set isCapturing to false when capturing is completed
        });

        if (isFirstPhotoTaken && isSecondPhotoTaken) {
          // Stop the timer and tilt listener after the second photo is taken
          captureTimer?.cancel();
          isTimerActive = false;

          await sendRequestWithImages(frontPhotoPath!, sidePhotoPath!);
          debugPrint('Both photos captured and sent');
        }
      }
    } catch (e) {
      debugPrint('Error capturing second photo: $e');
    }
  }

  Future<String> convertFileToBase64(File file) async {
    final List<int> bytes = await file.readAsBytes();
    final base64String = base64Encode(bytes);
    return base64String;
  }

  Future<File> compressImage(File imageFile, double quality) async {
    final image = img.decodeImage(imageFile.readAsBytesSync())!;

    // Convert quality to an integer (0.6 -> 60)
    final compressedQuality = (quality * 100).toInt();

    final compressedImage = img.encodeJpg(image, quality: compressedQuality);

    final compressedFile =
    File(imageFile.path.replaceAll('.jpg', '_compressed.jpg'));
    await compressedFile.writeAsBytes(compressedImage);

    return compressedFile;
  }

  Future<void> sendRequestWithImages(
      String frontPhotoPath,
      String sidePhotoPath,
      ) async {
    final cubit = BlocProvider.of<GetUserMeasurementCubit>(context);
    final cacheUserId = di<SharedPreferences>().get(CacheString.mirrorSizeUserIdKey);

    // Compress and encode the images
    final compressedFrontPhoto = await compressImage(
      File(frontPhotoPath), // Use the actual path here
      0.6,
    );

    final compressedSidePhoto = await compressImage(
      File(sidePhotoPath), // Use the actual path here
      0.6,
    );

    final frontImageBytes = compressedFrontPhoto.readAsBytesSync();
    final sideImageBytes = compressedSidePhoto.readAsBytesSync();
    final base64FrontImage = base64Encode(frontImageBytes);
    final base64SideImage = base64Encode(sideImageBytes);
    final cachedDeviceName =
    di<SharedPreferences>().getString(CacheString.deviceNameKey);
    final userEmail =
    di<SharedPreferences>().get(CacheString.userEmail);
    debugPrint('The User Email Is $userEmail');
    final userPhoneNumber =
    di<SharedPreferences>().get(CacheString.userPhoneNumber);
    debugPrint('The User userPhoneNumber Is $userPhoneNumber');

    final jsonBody = GetMeasurementRequestEntity(
      userId: cacheUserId.toString(),
      angle: dynamicAngle.truncate().toString(),
      height: cubit.userHeight,
      weight: cubit.userWeight,
      age: cubit.userAge,
      gender: 'male',
      productName: 'GET_MEASURED',
      emailId: userEmail.toString()??'',
      userName: cubit.userName,
      userMobile: userPhoneNumber.toString()??'',
      apiKey: AppString.apiKey,
      mobileModel: cachedDeviceName ?? '12ProMax',
      fitType: 'Loosefit',
      merchantId: AppString.merchantID,
      frontImage: base64FrontImage,
      sideImage: base64SideImage,
    );

    await BlocProvider.of<GetUserMeasurementCubit>(context)
        .uploadToMirrorSize(jsonBody);
  }

  @override
  void dispose() {
    controller?.dispose();
    captureTimer?.cancel();
    // Cancel the tilt listener here if you have a way to do that
    // tiltSubscription?.cancel(); // Cancel the tilt subscription here
    super.dispose();
  }

  void resetCapture() {
    setState(() {
      isFirstPhotoTaken = false;
      isSecondPhotoTaken = false;
      step = 1;
      isTimerActive = false;
      secondsLeft = null;
    });
    initializeCamera();
  }

  @override
  Widget build(BuildContext context) {
    final counterWidget = isCapturing
        ? Text(
      'Seconds left: $secondsLeft',
      style: TextStyle(
        color: Colors.white,
        fontSize: 24.sp,
        fontWeight: FontWeight.bold,
      ),
    )
        : const SizedBox(); //
    if (controller == null || !controller!.value.isInitialized) {
      return const Center(
        child: CircularProgressIndicator(),
      ); // Display a loader until the controller is initialized
    }
    Color borderColor;
    if (tiltAngle >= 86 && tiltAngle <= 90) {
      borderColor = Colors.green.withOpacity(0.5);
      if (isTimerActive) {
      } else {}
    } else {
      borderColor = Colors.red.withOpacity(0.5);
    }
    final imageAsset = isFirstPhotoTaken && !isSecondPhotoTaken
        ? 'assets/images/stomachmale.jpg'
        : 'assets/images/character.png';
    final userSide =
    isFirstPhotoTaken && !isSecondPhotoTaken ? 'side' : 'front';
    Widget contentWidget;
    if (tiltAngle >= 86 && tiltAngle <= 90) {
      contentWidget =
      const SizedBox(); // Empty container when not in the specified range
    } else {
      contentWidget = Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: const EdgeInsets.all(16.0),
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.6),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            'Tilt your phone between 86° and 90° to capture',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.sp,
            ),
          ),
        ),
      );
    }
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: borderColor, width: 20.w),
      ),
      child: Stack(
        children: [
          CameraPreview(controller!),
          Image.asset(
            imageAsset,
            width: 130.w,
            height: 130.h,
          ),
          Align(
              alignment: Alignment.topCenter,
              child: Text(
                userSide,
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(color: ColorConstants.primaryColor),
              )),
          if (isTimerActive)
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: const EdgeInsets.all(16.0),
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'Seconds left: $secondsLeft',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              'Tilt Angle: ${tiltAngle.toStringAsFixed(0)}°',
              style: TextStyle(
                color: Colors.green,
                fontSize: 18.sp,
              ),
            ),
          ),
          contentWidget,
          MultiBlocListener(
            listeners: [
              BlocListener<GetUserMeasurementCubit, GetUserMeasurementState>(
                listener: (context, state) {
// Declare the flag here

                  if (state is GetUserMeasurementLoadingState) {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return ModalBottomSheetDemo(
                          resetCapture: resetCapture,
                        );
                      },
                    );
                  }
                },
              ),
            ],
            child: Container(),
          )
        ],
      ),
    );
  }
}
