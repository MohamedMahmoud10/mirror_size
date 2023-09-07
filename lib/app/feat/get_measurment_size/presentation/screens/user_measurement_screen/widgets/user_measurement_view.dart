import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:device_name/device_name.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mirror_size/app/feat/get_measurment_size/presentation/cubit/get_measurement/get_user_measurement_cubit.dart';
import 'package:mirror_size/app/feat/get_measurment_size/presentation/screens/camera_screen/camera.dart';
import 'package:mirror_size/app/feat/get_measurment_size/presentation/screens/user_measurement_screen/widgets/user_measurement_form_view.dart';
import 'package:mirror_size/core/common_widgets/custom_elevated_button.dart';
import 'package:mirror_size/core/const/cache_strings.dart';
import 'package:mirror_size/core/di/index.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserMeasurementView extends StatefulWidget {
  const UserMeasurementView({super.key});

  @override
  State<UserMeasurementView> createState() => _UserMeasurementViewState();
}

class _UserMeasurementViewState extends State<UserMeasurementView> {
  final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();

  IosDeviceInfo? data;
  AndroidDeviceInfo? androidData;
  String? deviceId;
  final deviceName = DeviceName();
  String? iosDeviceName;

  Future<void> initDeviceInfo() async {
    if (Platform.isIOS) {
      data = await deviceInfoPlugin.iosInfo;
      deviceId = data?.utsname.machine ?? '';
      debugPrint('The Device Id Is $deviceId');
      iosDeviceName = await deviceName.apple(deviceId);
      debugPrint('device name is $iosDeviceName');
      if (iosDeviceName != null && iosDeviceName!.isNotEmpty) {
        await di<SharedPreferences>()
            .setString(CacheString.deviceNameKey, iosDeviceName!);
        debugPrint(
          '${di<SharedPreferences>().setString(CacheString.deviceNameKey, iosDeviceName!)}',
        );
      }
    }
    if (Platform.isAndroid) {
      androidData = await deviceInfoPlugin.androidInfo;
      deviceId = data?.utsname.machine ?? '';
      debugPrint('The Device Id Is $deviceId');
      iosDeviceName = await deviceName.apple(deviceId);
      debugPrint('device name is $iosDeviceName');
      if (iosDeviceName != null && iosDeviceName!.isNotEmpty) {
        await di<SharedPreferences>()
            .setString(CacheString.deviceNameKey, iosDeviceName!);
        debugPrint(
          '${di<SharedPreferences>().setString(CacheString.deviceNameKey, iosDeviceName!)}',
        );
      }
    }
  }

  @override
  void initState() {
    initDeviceInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();
    void onPressed() {
      if (formKey.currentState!.validate()) {
        formKey.currentState!.save();
        final Map<String, dynamic> valuesFromUserInputs =
            formKey.currentState!.value;

        final String? userName = valuesFromUserInputs['userName'] as String?;
        final String? userAge = valuesFromUserInputs['userAge'] as String?;
        final String? userHeight =
            valuesFromUserInputs['userHeight'] as String?;
        final String? userWeight =
            valuesFromUserInputs['userWeight'] as String?;
        final measurementCubit =
            BlocProvider.of<GetUserMeasurementCubit>(context);
        if (userName != null &&
            userAge != null &&
            userHeight != null &&
            userWeight != null &&
            userName.isNotEmpty &&
            userAge.isNotEmpty &&
            userHeight.isNotEmpty &&
            userWeight.isNotEmpty) {
          final int heightInCm = int.parse(userHeight);
          final int heightInMm = heightInCm * 10; // 1 cm = 10 mm

          measurementCubit.updateUserInput(
            userName: userName,
            userAge: userAge,
            userHeight: heightInMm.toString(),
            userWeight: userWeight,
          );
          debugPrint('The userAge $userAge');
          debugPrint('The userName $userName');
          debugPrint('The userHeight $userHeight');
          debugPrint('The userWeight $userWeight');
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const CameraScreen(),
            ),
          );
        }
      }
    }

    return FormBuilder(
      key: formKey,
      child: ListView(
        children: [
          const UserMeasurementFormView(),
          SizedBox(
            height: 20.h,
          ),
          CustomElevatedButton(
            color: Colors.green,
            onPressed: () => onPressed(),
            text: 'التالي',
          )
        ],
      ),
    );
  }
}
