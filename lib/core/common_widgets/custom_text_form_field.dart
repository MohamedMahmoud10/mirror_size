import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mirror_size/core/const/color_constants.dart';
import 'package:mirror_size/core/extensions/custom_padding.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.textEditingController,
    this.keyboardType,
    this.onChanged,
    this.onTap,
    this.onFieldSubmitted,
    this.onSaved,
    this.validator,
    this.focusNode,
    required this.labelText,
    required this.hintText,
    this.suffixIcon,
    this.contentPadding,
    this.icon,
    this.obscureText = false,
    this.readOnly = false,
    this.inputFormatters,
    this.textFieldName = '',
    this.maxLines = 1,
  });

  final TextEditingController textEditingController;
  final TextInputType? keyboardType;
  final Function(String?)? onChanged;
  final GestureTapCallback? onTap;
  final ValueChanged<String?>? onFieldSubmitted;
  final Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final FocusNode? focusNode;
  final String labelText;
  final String hintText;
  final Widget? suffixIcon;
  final EdgeInsetsGeometry? contentPadding;
  final bool obscureText;
  final Widget? icon;
  final bool readOnly;
  final List? inputFormatters;
  final String textFieldName;
  final int maxLines;


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              labelText,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.w600,
                    color: ColorConstants.textLightBlackGreyGrey,
                  ),
            ),
            icon ?? Container()
          ,],
        ),
        SizedBox(
          height: 7.h,
        ),
        FormBuilderTextField(
          maxLines: maxLines,
          name: textFieldName,
          inputFormatters: const [],
          readOnly: readOnly,
          obscureText: obscureText,
          controller: textEditingController,
          focusNode: focusNode,
          onChanged: onChanged,
          onTap: onTap,
          onSubmitted: onFieldSubmitted,
          validator: validator,
          onSaved: onSaved,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: hintText,
            hintStyle: Theme.of(context).textTheme.labelSmall,
            suffixIcon: suffixIcon,
            contentPadding: contentPadding,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.0.r),
              borderSide: const BorderSide(
                color: ColorConstants.textFromFieldBorderColor,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.0.r),
              borderSide: const BorderSide(
                color: ColorConstants.textFromFieldBorderColor,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.0.r),
              borderSide: const BorderSide(
                color: ColorConstants.secondaryColor,
              ),
            ),
          ),
        ),
      ],
    ).wrapOnColumn(paddingLeft: 10, paddingRight: 10);
  }
}
