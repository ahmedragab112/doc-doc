import 'package:doctor_appionment/core/utils/style/app_text_style.dart';
import 'package:flutter/material.dart';

class DontHaveAnAccount extends StatelessWidget {
  const DontHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(children: [
        const TextSpan(
            text: 'Don\'t have an account? ',
            style: AppTextStyle.font12ColorGreyW400),
        TextSpan(
          text: ' Sign Up',
          style: AppTextStyle.font12ColorMainBlueRegular
              .copyWith(fontSize: 13, fontWeight: FontWeight.w500),
        ),
      ]),
    );
  }
}
