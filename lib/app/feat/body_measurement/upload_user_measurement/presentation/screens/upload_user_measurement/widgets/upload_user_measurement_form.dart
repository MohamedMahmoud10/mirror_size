import 'package:flutter/material.dart';
import 'package:mirror_size/core/common_widgets/custom_text_form_field.dart';

class UploadUserMeasurementForm extends StatelessWidget {
  const UploadUserMeasurementForm({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController measurementTitleController =
        TextEditingController();
    final TextEditingController kandoraLengthController =
        TextEditingController();
    final TextEditingController chestController = TextEditingController();
    final TextEditingController lowHipController = TextEditingController();
    final TextEditingController shoulderController = TextEditingController();
    final TextEditingController wristController = TextEditingController();
    final TextEditingController wasitController = TextEditingController();
    final TextEditingController userIdController = TextEditingController();
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomTextFormField(
                textFieldName: 'title',
                textEditingController: measurementTitleController,
                labelText: 'Measurement Title',
                hintText: 'kota',
              ),
            ),
            Expanded(
              child: CustomTextFormField(
                textFieldName: 'kandora',
                textEditingController: kandoraLengthController,
                labelText: 'Kandora Length (Insh)',
                hintText: 'kota',
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: CustomTextFormField(
                textFieldName: 'chest',
                textEditingController: chestController,
                labelText: 'Chest (Insh)',
                hintText: 'kota',
              ),
            ),
            Expanded(
              child: CustomTextFormField(
                textFieldName: 'lowHip',
                textEditingController: lowHipController,
                labelText: 'Low Hip (Insh)',
                hintText: 'kota',
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: CustomTextFormField(
                textFieldName: 'shoulder',
                textEditingController: shoulderController,
                labelText: 'Shoulder (Insh)',
                hintText: 'kota',
              ),
            ),
            Expanded(
              child: CustomTextFormField(
                textFieldName: 'wrist',
                textEditingController: wristController,
                labelText: 'Wrist (Insh)',
                hintText: 'kota',
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: CustomTextFormField(
                textFieldName: 'waist',
                textEditingController: wasitController,
                labelText: 'Waist (Insh)',
                hintText: 'kota',
              ),
            ),
            Expanded(
              child: CustomTextFormField(
                textFieldName: 'userId',
                textEditingController: userIdController,
                labelText: 'User Id ',
                hintText: 'kota',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
