import 'package:flutter/material.dart';
import 'package:mirror_size/app/feat/get_measurment_size/presentation/screens/camera_screen/widgets/camera_widget.dart';

class CameraScreen extends StatelessWidget {
  const CameraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Mirror Size Camera'),
        ),
        body: CameraWidget(),
      ),
    );
  }
}
