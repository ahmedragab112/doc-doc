import 'package:doctor_appionment/core/utils/extentions/extenstion.dart';
import 'package:doctor_appionment/core/utils/string/app_string.dart';
import 'package:doctor_appionment/core/utils/style/app_text_style.dart';
import 'package:doctor_appionment/features/onboarding/widget/custom_button.dart';
import 'package:doctor_appionment/features/onboarding/widget/doctorLogo.dart';
import 'package:doctor_appionment/features/onboarding/widget/logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Logo(),
            SizedBox(
              height: 40.h,
            ),
            const DoctorLogo(),
            SizedBox(
              height: 8.h,
            ),
            const Text(
             AppString.onBoardingDescription, 
                style: AppTextStyle.font12ColorGreyW400,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 32.h,
            ),
            const CustomButton(),
          ],
        ).setPadding(context, enableMediaQuery: false, vertical: 22.h)),
      ),
    );
  }
}
