import 'package:doctor_appionment/core/colors/colors.dart';
import 'package:doctor_appionment/core/utils/style/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomFormFiled extends StatelessWidget {
  const CustomFormFiled(
      {super.key,
      required this.hintText,
      this.icon,
      this.obscureText = false,
      this.inputType = TextInputType.emailAddress});
  final String hintText;
  final Widget? icon;
  final bool obscureText;
  final TextInputType inputType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: AppTextStyle.font14ColorBlackMeduim,
      obscureText: obscureText,
      keyboardType: inputType,
      decoration: InputDecoration(
        suffixIcon: icon,
        isDense: true,
        filled: true,
        fillColor: ColorManger.formBackground,
        hintText: hintText,
        hintStyle: AppTextStyle.font12ColorGreyW400,
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide:
                const BorderSide(color: ColorManger.mainBlue, width: 1.4)),
        enabled: true,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
                color: ColorManger.formBoraderGrey, width: 1.4)),
      ),
    );
  }
}
