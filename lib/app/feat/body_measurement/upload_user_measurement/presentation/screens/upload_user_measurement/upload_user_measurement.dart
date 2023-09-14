import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mirror_size/app/feat/body_measurement/upload_user_measurement/domain/use_case/upload_user_body_measurement_use_case.dart';
import 'package:mirror_size/app/feat/body_measurement/upload_user_measurement/presentation/cubits/upload_body_measurement/upload_body_measurement_cubit.dart';
import 'package:mirror_size/app/feat/body_measurement/upload_user_measurement/presentation/screens/upload_user_measurement/widgets/upload_user_measurement_view.dart';
import 'package:mirror_size/core/common_widgets/custom_app_bar.dart';
import 'package:mirror_size/core/di/index.dart';

class UploadUserMeasurement extends StatelessWidget {
  const UploadUserMeasurement({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UplaodBodyMeasurementCubit>(
      create: (context) => UplaodBodyMeasurementCubit(
        useCase: di<UploadUserBodyMeasurementuseCase>(),
      ),
      child: const Scaffold(
        appBar: CustomAppBar(title: ''),
        body: UploadUserMeasurementView(),
      ),
    );
  }
}
