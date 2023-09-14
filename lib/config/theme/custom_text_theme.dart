import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mirror_size/core/const/index.dart';
import 'package:mirror_size/gen/fonts.gen.dart';
// Custom Text Styles Class For Both Dark Isa  and Light Theme Now :)

class CustomTextTheme {
  static TextTheme textTheme() {
    const FontWeight medium = FontWeight.w600;
    const FontWeight regular = FontWeight.w400;
    const FontWeight normal = FontWeight.w500;
    const FontWeight normalBold = FontWeight.w700;
    const FontWeight bold = FontWeight.w800;
    return TextTheme(
      titleLarge: TextStyle(
        fontSize: 26.sp,
        color: ColorConstants.textBlack,
        fontWeight: medium,
        // TODO(MM): - Please add a fonts file to the constants package (just like the colors and the assets)
        fontFamily: FontFamily.arial,
        letterSpacing: -1.1,
      ),
      titleMedium: TextStyle(
        fontSize: 14.sp,
        color: ColorConstants.textGrey,
        fontWeight: normal,
        fontFamily: FontFamily.arial,
      ),
      titleSmall: TextStyle(
        fontSize: 18.sp,
        color: ColorConstants.textGrey,
        fontWeight: regular,
        fontFamily: FontFamily.arial,
        letterSpacing: -1.1,
      ),
      displayLarge: TextStyle(
        fontSize: 30.sp,
        color: ColorConstants.textWhite,
        fontWeight: bold,
        fontFamily: FontFamily.arial,
        letterSpacing: -1.1,
      ),
      displayMedium: TextStyle(
        fontSize: 26.sp,
        color: ColorConstants.textWhite,
        fontWeight: normal,
        fontFamily: FontFamily.arial,
        letterSpacing: -1.1,
      ),
      displaySmall: TextStyle(
        fontSize: 16.sp,
        color: ColorConstants.textGrey,
        fontWeight: normal,
        fontFamily: FontFamily.arial,
        letterSpacing: -1.1,
      ),
      labelSmall: TextStyle(
        fontSize: 16.sp,
        color: ColorConstants.textLightGrey,
        fontWeight: regular,
        fontFamily: FontFamily.arial,
        letterSpacing: -1.1,
        height: 10/14,
      ),
      headlineMedium: TextStyle(
        fontSize: 20.sp,
        color: ColorConstants.blackColor,
        fontWeight: normalBold,
        fontFamily: FontFamily.arial,
        letterSpacing: -1.1,
        height: 10/14,
      ),
      );
  }
}
