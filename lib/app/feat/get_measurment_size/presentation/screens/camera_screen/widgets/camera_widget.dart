import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image/image.dart' as img;
import 'package:mirror_size/app/feat/body_measurement/upload_user_measurement/domain/entity/upload_body_measurement_request_entity.dart';
import 'package:mirror_size/app/feat/body_measurement/upload_user_measurement/presentation/cubits/upload_body_measurement/upload_body_measurement_cubit.dart';
import 'package:mirror_size/app/feat/get_measurment_size/domain/entity/get_measurement_request_entity.dart';
import 'package:mirror_size/app/feat/get_measurment_size/presentation/cubit/get_measurement/get_user_measurement_cubit.dart';
import 'package:mirror_size/app/feat/get_measurment_size/presentation/cubit/get_measurement/get_user_measurement_state.dart';
import 'package:mirror_size/app/feat/get_measurment_size/presentation/screens/camera_screen/widgets/bottom_sheet.dart';
import 'package:mirror_size/app/feat/get_user_measurement_from_mirroir_size/domain/entity/get_recommendation_measurement_request_entity.dart';
import 'package:mirror_size/app/feat/get_user_measurement_from_mirroir_size/presentation/cubits/upload_body_measurement/upload_body_measurement_cubit.dart';
import 'package:mirror_size/app/feat/get_user_measurement_from_mirroir_size/presentation/cubits/upload_body_measurement/upload_body_measurement_state.dart';
import 'package:mirror_size/app/feat/get_user_measurement_from_mirroir_size/presentation/screens/kota.dart';
import 'package:mirror_size/core/const/app_strings.dart';
import 'package:mirror_size/core/const/cache_strings.dart';
import 'package:mirror_size/core/di/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tilt/tilt.dart'; // Import the image package

class CameraWidget extends StatefulWidget {
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

  @override
  void initState() {
    super.initState();
    initializeCamera();
  }

  Future<void> initializeCamera() async {
    try {
      cameras = await availableCameras();
      controller = CameraController(
        cameras[0],
        ResolutionPreset.high,
        imageFormatGroup: ImageFormatGroup.jpeg,
      );
      await controller!.initialize();
      setState(() {});
      startTiltListener();
    } on CameraException catch (e) {
      debugPrint("${e.code} ${e.description}");
    }
  }

  void startTiltListener() {
    DeviceTilt(
      initialTilt: const Tilt(90, 90),
    ).stream.listen((tilt) {
      tiltAngle = tilt.xRadian * (180 / 3.14159265359);

      if (tiltAngle >= 86 && tiltAngle <= 90 && !isTimerActive && step == 1) {
        // Capture the first photo
        dynamicAngle = tilt.xRadian * (180 / 3.14159265359);
        captureTimer?.cancel();
        isTimerActive = true;
        secondsLeft = 5;
        captureTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
          setState(() {
            secondsLeft = secondsLeft != null ? secondsLeft! - 1 : null;
            if (secondsLeft! <= 0) {
              timer.cancel();
              takeFirstPhoto(); // Capture and handle the first photo
              isTimerActive = false;
              secondsLeft = null;
            }
          });
        });
      } else if (tiltAngle >= 86 &&
          tiltAngle <= 90 &&
          !isTimerActive &&
          step == 2) {
        // Capture the second photo
        captureTimer?.cancel();
        isTimerActive = true;
        secondsLeft = 5;
        captureTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
          setState(() {
            secondsLeft = secondsLeft != null ? secondsLeft! - 1 : null;
            if (secondsLeft! <= 0) {
              timer.cancel();
              takeSecondPhoto(); // Capture and handle the second photo
              isTimerActive = false;
              secondsLeft = null;
            }
          });
        });
      } else if (tiltAngle < 86 || tiltAngle > 90) {
        // Cancel the capture timer if the tilt goes out of range
        captureTimer?.cancel();
        isTimerActive = false; // Reset timer state
      }
      setState(() {});
    });
  }

  Future<void> takeFirstPhoto() async {
    try {
      if (controller != null) {
        // Capture front photo (first photo)
        final XFile frontPhoto = await controller!.takePicture();
        frontPhotoPath = frontPhoto.path;

        debugPrint('Front photo captured (first): ${frontPhoto.path}');

        // Set the flag to indicate that the first photo has been taken
        setState(() {
          isFirstPhotoTaken = true;
        });

        // Dispose the camera and cancel the timer
        controller?.dispose();
        captureTimer?.cancel();

        // Reset the UI and prepare for the second photo
        setState(() {
          step = 2;
          isTimerActive = false;
          secondsLeft = null;
          initializeCamera();
        });
      }
    } catch (e) {
      debugPrint('Error capturing first photo: $e');
    }
  }

  Future<void> takeSecondPhoto() async {
    try {
      if (controller != null && !isSecondPhotoInProgress) {
        // Check the flag
        // Capture side photo (second photo)
        final XFile sidePhoto = await controller!.takePicture();
        sidePhotoPath = sidePhoto.path;
        debugPrint('Side photo captured (second): ${sidePhoto.path}');

        // Set the flag to indicate that the second photo has been taken
        setState(() {
          isSecondPhotoTaken = true;
        });

        // If both first and second photos are taken, send the request
        if (isFirstPhotoTaken && isSecondPhotoTaken) {
          sendRequestWithImages(frontPhotoPath!, sidePhotoPath!);
          debugPrint('Both photos captured and sent');
        }
      }
    } catch (e) {
      debugPrint('Error capturing second photo: $e');
    }
  }

  Future<String> convertFileToBase64(File file) async {
    final List<int> bytes = await file.readAsBytes();
    final String base64String = base64Encode(bytes);
    return base64String;
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

  Future<void> sendRequestWithImages(
    String frontPhotoPath,
    String sidePhotoPath,
  ) async {
    final cubit = BlocProvider.of<GetUserMeasurementCubit>(context);
    final cacheUserId = di<SharedPreferences>().get(CacheString.userIdKey);

    // Compress and encode the images
    final File compressedFrontPhoto = await compressImage(
      File(frontPhotoPath), // Use the actual path here
      0.6,
    );

    final File compressedSidePhoto = await compressImage(
      File(sidePhotoPath), // Use the actual path here
      0.6,
    );

    final frontImageBytes = compressedFrontPhoto.readAsBytesSync();
    final sideImageBytes = compressedSidePhoto.readAsBytesSync();
    final base64FrontImage = base64Encode(frontImageBytes);
    final base64SideImage = base64Encode(sideImageBytes);
    final String? cachedDeviceName =
        di<SharedPreferences>().getString(CacheString.deviceNameKey);

    final jsonBody = GetMeasurementRequestEntity(
      userId: cacheUserId.toString(),
      angle: dynamicAngle.truncate().toString(),
      height: cubit.userHeight,
      weight: cubit.userWeight,
      age: cubit.userAge,
      gender: "male",
      productName: "GET_MEASURED",
      emailId: "test@test.com",
      userName: cubit.userName,
      userMobile: "7206422605",
      apiKey: AppString.apiKey,
      mobileModel: cachedDeviceName ?? '12ProMax',
      fitType: "Loosefit",
      merchantId: AppString.merchantID,
      frontImage: base64FrontImage,
      sideImage: base64SideImage,
    );

    BlocProvider.of<GetUserMeasurementCubit>(context)
        .uploadToMirrorSize(jsonBody);
  }

  @override
  void dispose() {
    controller?.dispose();
    captureTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (controller == null || !controller!.value.isInitialized) {
      return const Center(
        child: CircularProgressIndicator(),
      ); // Display a loader until the controller is initialized
    }
    Color borderColor;
    String message;
    if (tiltAngle >= 86 && tiltAngle <= 90) {
      borderColor = Colors.green.withOpacity(0.5);
      if (isTimerActive) {
        message = 'Capture in ${secondsLeft ?? 0} seconds';
      } else {
        message = 'Hold still...';
      }
    } else {
      borderColor = Colors.red.withOpacity(0.5);
      message = 'Adjust the tilt angle between 86 and 90 degrees';
    }
    final imageAsset = isFirstPhotoTaken && !isSecondPhotoTaken
        ? 'assets/images/stomachmale.jpg'
        : 'assets/images/character.png';
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
          contentWidget,
          BlocBuilder<GetUserMeasurementCubit, GetUserMeasurementState>(
            builder: (context, state) {
              bool alreadyFiredNewRequest = false; // Declare the flag here

              if (state is GetUserMeasurementLoadingState) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is GetUserMeasurementLoadedState) {
                final cacheUserId =
                    di<SharedPreferences>().get(CacheString.userIdKey);

                return ModalBottomSheetDemo(
                  message: state.responseEntity.message,
                  onClose: () {
                    if (state.responseEntity.code == '1' &&
                        !alreadyFiredNewRequest &&
                        state.responseEntity.message == 'complete') {
                      alreadyFiredNewRequest =
                          true; // Set the flag to prevent multiple requests

                      // Fire your network request here
                      BlocProvider.of<GetRecommendationCubit>(context)
                          .getUserBodyMeasurement(
                        GetRecommendationMeasurementRequestEntity(
                          apiKey: AppString.apiKey,
                          apparelName: 'Kandora',
                          brandName: 'CanCan',
                          merchantId: AppString.merchantID,
                          productName: "GET_MEASURED",
                          gender: AppString.gender,
                          userId: cacheUserId.toString(),
                        ),
                      );
                    }
                    BlocListener(
                      listener: (BuildContext context, state) {
                        if (state is GetRecommendationSizeSuccessState) {
                          BlocProvider.of<UplaodBodyMeasurementCubit>(context)
                              .getUserBodyMeasurement(
                            UploadBodyMeasurementRequestEntity(
                              internalUserId: '',
                              shopifyUserId: '',
                              values: [
                                ValuesEntity(
                                  title: [
                                    state.responseEntity.measurementData
                                            ?.stomach ??
                                        ''
                                  ],
                                  measurementType: [
                                    state.responseEntity.measurementData
                                            ?.upperNeck ??
                                        ''
                                  ],
                                  kandoraLength: [
                                    double.tryParse(
                                          state.responseEntity.measurementData
                                                  ?.armsLength ??
                                              '',
                                        ) ??
                                        0.0
                                  ],
                                  chest: [
                                    double.tryParse(
                                          state.responseEntity.measurementData
                                                  ?.chest ??
                                              '',
                                        ) ??
                                        0.0
                                  ],
                                  lowHip: [],
                                  shoulder: [],
                                  wrist: [],
                                  waist: [],
                                ),
                              ],
                            ),
                          );
                        }
                      },
                    );
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Kota(),
                      ),
                    );
                  },
                );
              } else {
                return Container();
              }
            },
          ),
        ],
      ),
    );
  }
}
