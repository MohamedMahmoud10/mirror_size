import 'package:flutter/material.dart';
import 'package:mirror_size/app/feat/custom_products/presentation/screens/select_fabric_preferences_screen/widgets/select_fabric_preferences_view.dart';
import 'package:mirror_size/core/common_widgets/custom_app_bar.dart';

class SelectFabricPreferencesScreen extends StatelessWidget {
  const SelectFabricPreferencesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(title: 'Select Fabric Preferences'),
        body: SelectFabricPreferencesView(),
      ),
    );
  }
}
