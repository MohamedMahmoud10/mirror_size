import 'package:flutter/material.dart';
import 'package:mirror_size/app/feat/custom_products/presentation/screens/customize_kandora_screen/components/customize_kandora_view.dart';
import 'package:mirror_size/core/common_widgets/index.dart';

class CustomizeKandoraScreen extends StatelessWidget {
  const CustomizeKandoraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: 'Customize your kandora',
      ),
      body: CustomizeKandoraView(),
    );
  }
}
