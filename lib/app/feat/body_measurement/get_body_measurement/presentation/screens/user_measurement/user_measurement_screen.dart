import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mirror_size/app/feat/body_measurement/get_body_measurement/domain/use_case/get_body_measurement_use_case.dart';
import 'package:mirror_size/app/feat/body_measurement/get_body_measurement/presentation/cubits/body_measurement/body_measurement_cubit.dart';
import 'package:mirror_size/app/feat/body_measurement/get_body_measurement/presentation/screens/user_measurement/widgets/user_measurement_view.dart';
import 'package:mirror_size/core/common_widgets/custom_app_bar.dart';
import 'package:mirror_size/core/di/index.dart';

class UserMeasurementScreen extends StatelessWidget {
  const UserMeasurementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GetBodyMeasurementCubit>(
      create: (context) => GetBodyMeasurementCubit(
        useCase: di<GetBodyMeasurementUseCase>(),
      )..getUserBodyMeasurement(),
      child: const SafeArea(
        child: Scaffold(
          appBar: CustomAppBar(title: ''),
          body: UserMeasurementView(),
        ),
      ),
    );
  }
}
