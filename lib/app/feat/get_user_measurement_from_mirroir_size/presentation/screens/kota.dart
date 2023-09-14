import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mirror_size/app/feat/get_user_measurement_from_mirroir_size/presentation/cubits/upload_body_measurement/upload_body_measurement_cubit.dart';
import 'package:mirror_size/app/feat/get_user_measurement_from_mirroir_size/presentation/cubits/upload_body_measurement/upload_body_measurement_state.dart';
import 'package:mirror_size/core/common_widgets/custom_elevated_button.dart';

class Kota extends StatelessWidget {
  const Kota({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: BlocBuilder<GetRecommendationCubit, GetRecommendationSizeState>(
        builder: (context, state) {
          if (state is GetRecommendationSizeSuccessState ){
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(state.responseEntity.measurementData?.armsLength??''),
                  Text(state.responseEntity.measurementData?.chest??''),
                  Text(state.responseEntity.measurementData?.frontChestWidth??''),
                  Text(state.responseEntity.measurementData?.shoulderAcross??''),
                  Text(state.responseEntity.measurementData?.upperNeck??''),
                  Text(state.responseEntity.measurementData?.stomach??''),
                  Text(state.responseEntity.measurementData?.sleeveLengthFull??''),
                  CustomElevatedButton(text: 'Close',onPressed: (){},)
                ],
              ),
            );

          }
          return const Text('No Data Found');

        },

      ),
    );
  }
}
