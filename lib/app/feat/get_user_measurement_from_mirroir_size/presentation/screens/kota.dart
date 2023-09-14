import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mirror_size/app/feat/body_measurement/upload_user_measurement/domain/entity/upload_body_measurement_request_entity.dart';
import 'package:mirror_size/app/feat/body_measurement/upload_user_measurement/presentation/cubits/upload_body_measurement/upload_body_measurement_cubit.dart';
import 'package:mirror_size/app/feat/custom_products/presentation/screens/customize_kandora_screen/customize_kandora_screen.dart';
import 'package:mirror_size/app/feat/get_user_measurement_from_mirroir_size/presentation/cubits/upload_body_measurement/upload_body_measurement_cubit.dart';
import 'package:mirror_size/app/feat/get_user_measurement_from_mirroir_size/presentation/cubits/upload_body_measurement/upload_body_measurement_state.dart';
import 'package:mirror_size/core/common_widgets/custom_elevated_button.dart';
import 'package:mirror_size/core/const/cache_strings.dart';
import 'package:mirror_size/core/di/index.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Kota extends StatelessWidget {
  const Kota({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<GetRecommendationCubit, GetRecommendationSizeState>(
        listener: (context, state) {
          if (state is GetRecommendationSizeSuccessState) {
            final cacheUserId =
                di<SharedPreferences>().get(CacheString.userIdKey);

            BlocProvider.of<UplaodBodyMeasurementCubit>(context)
                .getUserBodyMeasurement(
              UploadBodyMeasurementRequestEntity(
                internalUserId: cacheUserId.toString(),
                shopifyUserId: cacheUserId.toString(),
                values: [
                  ValuesEntity(
                    title: [
                      state.responseEntity.measurementData?.stomach ?? ''
                    ],
                    measurementType: [
                      state.responseEntity.measurementData?.upperNeck ?? ''
                    ],
                    kandoraLength: [
                      double.tryParse(
                            state.responseEntity.measurementData?.armsLength ??
                                '',
                          ) ??
                          0.0
                    ],
                    chest: [
                      double.tryParse(
                            state.responseEntity.measurementData?.chest ?? '',
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
        builder: (context, state) {
          if (state is GetRecommendationSizeSuccessState) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(state.responseEntity.measurementData?.armsLength ?? ''),
                  Text(state.responseEntity.measurementData?.chest ?? ''),
                  Text(
                    state.responseEntity.measurementData?.frontChestWidth ?? '',
                  ),
                  Text(
                    state.responseEntity.measurementData?.shoulderAcross ?? '',
                  ),
                  Text(state.responseEntity.measurementData?.upperNeck ?? ''),
                  Text(state.responseEntity.measurementData?.stomach ?? ''),
                  Text(
                    state.responseEntity.measurementData?.sleeveLengthFull ??
                        '',
                  ),
                  CustomElevatedButton(
                    color: Colors.blue,
                    text: 'Close',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CustomizeKandoraScreen(),
                        ),
                      );
                    },
                  )
                ],
              ),
            );
          }
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('No Data Found'),
                CustomElevatedButton(
                  color: Colors.blue,
                  text: 'Close',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CustomizeKandoraScreen(),
                      ),
                    );
                  },
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
