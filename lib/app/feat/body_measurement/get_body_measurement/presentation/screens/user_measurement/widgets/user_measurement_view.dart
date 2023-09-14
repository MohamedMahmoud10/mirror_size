import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mirror_size/app/feat/body_measurement/get_body_measurement/presentation/cubits/body_measurement/body_measurement_cubit.dart';
import 'package:mirror_size/app/feat/body_measurement/get_body_measurement/presentation/screens/user_measurement/expansion_usermeasurement.dart';

class UserMeasurementView extends StatelessWidget {
  const UserMeasurementView({Key? key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetBodyMeasurementCubit, GetBodyMeasurementState>(
      builder: (context, state) {
        if (state is GetBodyMeasurementSuccessState) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ExpansionUserMeasurement(
                  responses: state.bodyMeasurementList,
                )
              ],
            ),
          );
        }
        return const Center(
          child: CircularProgressIndicator.adaptive(),
        );
      },
    );
  }
}
