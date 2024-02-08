import 'package:doctor_appionment/core/colors/colors.dart';
import 'package:doctor_appionment/core/utils/helper/custom_textform_filed.dart';
import 'package:flutter/material.dart';

class PasswordMedual extends StatefulWidget {
  const PasswordMedual({
    super.key,
    required this.controller, this.validator,
  });
  final TextEditingController controller;
    final String? Function(String?)? validator;

  @override
  State<PasswordMedual> createState() => _PasswordMedualState();
}

class _PasswordMedualState extends State<PasswordMedual> {
  bool isabscure = false;
 
  @override
  Widget build(BuildContext context) {
    return CustomFormFiled(
      validator: widget.validator,
      hintText: 'Password',
      obscureText: isabscure,
      icon: GestureDetector(
        onTap: () {
          isabscure = !isabscure;
          setState(() {});
        },
        child: Icon(
          isabscure
              ? Icons.visibility_off_outlined
              : Icons.remove_red_eye_outlined,
          color: ColorManger.iconBlackColor,
          size: 24,
        ),
      ),
      controller: widget.controller,
    );
  }
}
