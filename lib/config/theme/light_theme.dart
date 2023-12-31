import 'package:flutter/material.dart';
import 'package:mirror_size/config/theme/custom_text_theme.dart';
import 'package:mirror_size/core/const/color_constants.dart';

ThemeData lightThemeData() {
  return ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,

    //Setting the Brightness to light  so that this can be used as Light ThemeData
    // Todo: Refrain from using Colors. (Do not use static colors)
    scaffoldBackgroundColor: ColorConstants.homeBackgroundColor,
    textTheme: CustomTextTheme.textTheme(),
    //Setting the Text Theme to LightTextTheme
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(
        color: ColorConstants.whiteColor,
      ),
    ),
      dialogBackgroundColor: ColorConstants.whiteColor,
  );
}
