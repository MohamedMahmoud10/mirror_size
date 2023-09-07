import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mirror_size/core/const/index.dart';
import 'package:mirror_size/core/extensions/custom_padding.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    this.onPressed,
    required this.text,
    this.isCancelOrDeleteButton = false,
    this.isCancelButton = false,
    this.color,
    this.textColor = ColorConstants.whiteColor,
    this.borderRadiusColor,
    this.fontSize,
  });

  final VoidCallback? onPressed;
  final String text;
  final bool isCancelOrDeleteButton;
  final bool isCancelButton;
  final Color? color;
  final Color? textColor;
  final Color? borderRadiusColor;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      height: 49.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.r),
        color: color,
        border: Border.all(
          color: borderRadiusColor ?? ColorConstants.transparentColor,
        ),
      ),
      child: InkWell(
        onTap: onPressed,
        child: Text(
          text,
          // TODO(MM): Please add all the sizes to dimens file, also always use .h .r .w .sp for all the sizes
          // TODO(MM): If it has a different size place it in a style, otherwise
          // TODO(MM): You can add a dimens file which has custom dimensions that we use with copyWith text theme
          style: Theme.of(context)
              .textTheme
              .displayMedium!
              .copyWith(fontSize: fontSize ?? 24.sp, color: textColor),
        ).center(),
      ),
    );
  }
}
