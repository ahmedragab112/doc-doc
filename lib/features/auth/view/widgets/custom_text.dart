import 'package:doctor_appionment/core/utils/style/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomRichText extends StatelessWidget {
  const CustomRichText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: const TextSpan(children: [
        TextSpan(
          text: 'By logging, you agree to our ',
          style: AppTextStyle.font12ColorGreyW400,
        ),
        TextSpan(
          text: ' Terms & Conditions',
          style: AppTextStyle.font14ColorBlackMeduim,
        ),
        TextSpan(
          text: ' and',
          style: AppTextStyle.font12ColorGreyW400,
        ),
        TextSpan(
          text: ' PrivacyPolicy',
          style: AppTextStyle.font14ColorBlackMeduim,
        ),
      ]),
    );
  }
}
