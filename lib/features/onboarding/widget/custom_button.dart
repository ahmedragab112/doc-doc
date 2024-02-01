import 'package:doctor_appionment/config/router/app_routes.dart';
import 'package:doctor_appionment/core/colors/colors.dart';
import 'package:doctor_appionment/core/utils/extentions/extenstion.dart';
import 'package:doctor_appionment/core/utils/string/app_string.dart';
import 'package:doctor_appionment/core/utils/style/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 52.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorManger.mainBlue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
          ),
        ),
        onPressed: () {
          context.pushReplacementNamed(AppRoutes.loginScreen);
        },
        child: Text(
          AppString.onBoardingButton,
          style:
              AppTextStyle.font16ColorBlackW600.copyWith(color: Colors.white),
        ),
      ),
    ).setAllPadding(16);
  }
}
