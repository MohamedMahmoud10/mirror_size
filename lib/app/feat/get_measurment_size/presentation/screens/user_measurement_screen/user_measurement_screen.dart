import 'package:flutter/material.dart';
import 'package:mirror_size/app/feat/get_measurment_size/presentation/screens/user_measurement_screen/widgets/user_measurement_view.dart';

class UserMeasurementScreen extends StatelessWidget {
  const UserMeasurementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const SafeArea(
      child: Scaffold(
        body: AddUserMeasurementView(),
      ),
    );
  }
}
