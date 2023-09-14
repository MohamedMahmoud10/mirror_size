import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:mirror_size/app/feat/body_measurement/upload_user_measurement/domain/entity/upload_body_measurement_request_entity.dart';
import 'package:mirror_size/app/feat/body_measurement/upload_user_measurement/presentation/cubits/upload_body_measurement/upload_body_measurement_cubit.dart';
import 'package:mirror_size/app/feat/body_measurement/upload_user_measurement/presentation/screens/upload_user_measurement/widgets/upload_user_measurement_form.dart';
import 'package:mirror_size/app/feat/get_measurment_size/presentation/screens/user_measurement_screen/user_measurement_screen.dart';
import 'package:mirror_size/core/common_widgets/custom_elevated_button.dart';

class UploadUserMeasurementView extends StatelessWidget {
  const UploadUserMeasurementView({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormBuilderState> formkey = GlobalKey<FormBuilderState>();
    void onPressed() {
      if (formkey.currentState!.saveAndValidate()) {
        final Map<String, dynamic> savedValues = formkey.currentState!.value;
        debugPrint('The Saved Values Is $savedValues');
        final String title = savedValues['title'] as String;
        final String userId = savedValues['userId'] as String;
        final double? kandoraLength =
            double.tryParse(savedValues['kandora'] as String);
        final double? chest = double.tryParse(savedValues['chest'] as String);
        final double? lowHip = double.tryParse(savedValues['lowHip'] as String);
        final double? shoulder =
            double.tryParse(savedValues['shoulder'] as String);
        final double? wrist = double.tryParse(savedValues['wrist'] as String);
        final double? waist = double.tryParse(savedValues['waist'] as String);
        if (title.isNotEmpty &&
            userId.isNotEmpty &&
            kandoraLength != null &&
            chest != null &&
            lowHip != null &&
            shoulder != null &&
            wrist != null &&
            waist != null) {
          BlocProvider.of<UplaodBodyMeasurementCubit>(context)
              .getUserBodyMeasurement(
            UploadBodyMeasurementRequestEntity(
              internalUserId: userId,
              shopifyUserId: userId,
              values: [
                ValuesEntity(
                  title: [title],
                  measurementType: ['Customize'],
                  kandoraLength: [kandoraLength],
                  chest: [chest],
                  lowHip: [lowHip],
                  shoulder: [shoulder],
                  wrist: [wrist],
                  waist: [waist],
                ),
              ],
            ),
          );
        }
      }
    }

    return SingleChildScrollView(
      child: FormBuilder(
        key: formkey,
        child: Column(
          children: [
            const UploadUserMeasurementForm(),
            CustomElevatedButton(
              text: 'Enter',
              onPressed: () => onPressed(),
              color: Colors.red,
            ),
            CustomElevatedButton(
              text: 'Use Ai',
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const UserMeasurementScreen(),
                  ),
                );
              },
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
