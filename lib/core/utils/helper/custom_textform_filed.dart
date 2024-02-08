import 'package:doctor_appionment/core/colors/colors.dart';
import 'package:doctor_appionment/core/utils/style/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomFormFiled extends StatelessWidget {
  const CustomFormFiled(
      {super.key,
      required this.hintText,
      this.icon,
      this.obscureText = false,
      this.inputType = TextInputType.emailAddress,
      required this.controller,
      this.validator});
  final String hintText;
  final Widget? icon;
  final bool obscureText;
  final TextInputType inputType;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      style: AppTextStyle.font14ColorBlackMeduim,
      obscureText: obscureText,
      keyboardType: inputType,
      decoration: InputDecoration(
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: Colors.red, width: 1.3)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: Colors.red, width: 1.3)),
        suffixIcon: icon,
        filled: true,
        fillColor: ColorManger.formBackground,
        hintText: hintText,
        hintStyle: AppTextStyle.font12ColorGreyW400,
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide:
                const BorderSide(color: ColorManger.mainBlue, width: 1.3)),
        enabled: true,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
                color: ColorManger.formBoraderGrey, width: 1.3)),
      ),
    );
  }
}
