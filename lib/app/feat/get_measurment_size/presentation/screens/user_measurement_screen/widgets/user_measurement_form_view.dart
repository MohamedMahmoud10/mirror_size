import 'package:flutter/material.dart';
import 'package:mirror_size/core/common_widgets/index.dart';

class UserMeasurementFormView extends StatelessWidget {
  const UserMeasurementFormView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController ageController = TextEditingController();
    final TextEditingController heightController = TextEditingController();
    final TextEditingController weightController = TextEditingController();

    return SingleChildScrollView(
      child: Column(
        children: [
          CustomTextFormField(
            textFieldName: 'userName',
            textEditingController: nameController,
            labelText: '',
            hintText: 'آدخل اسمك',
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'يرجى إدخال اسم المستخدم';
              }
              return null; // Return null if the input is valid
            },
          ),
          CustomTextFormField(
            textFieldName: 'userAge',
            textEditingController: ageController,
            labelText: '',
            hintText: 'آدخل عمرك',
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                if (!RegExp(r'^\d+$').hasMatch(value!)) {
                  return 'العمر يجب أن يكون رقمًا صحيحًا';
                }
              }
              return null; // Return null if the input is valid
            },
          ),
          CustomTextFormField(
            textFieldName: 'userHeight',
            textEditingController: heightController,
            labelText: '',
            hintText: 'آدخل طولك (سم)',
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'يرجى إدخال الطول';
              }
              // Regular expression to match positive integers (no leading zeros)
              final RegExp heightRegExp = RegExp(r'^[1-9]\d*$');

              if (!heightRegExp.hasMatch(value)) {
                return 'الطول يجب أن يكون رقم صحيح موجب بدون أصفار مُتتالية';
              }

              final int height = int.parse(value);

              if (height < 140) {
                return 'الطول يجب أن يكون على الأقل 140 سم';
              }

              return null; // Return null if the input is valid
            },
          ),
          CustomTextFormField(
            textFieldName: 'userWeight',
            textEditingController: weightController,
            labelText: '',
            hintText: 'آدخل وزنك (بالكيلو غرام)',
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'يرجى إدخال الوزن';
              }
              // Add additional validation rules for weight if needed
              return null; // Return null if the input is valid
            },
          )
        ],
      ),
    );
  }
}
