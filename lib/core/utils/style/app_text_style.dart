import 'package:doctor_appionment/core/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyle {
  static TextStyle font16ColorBlackW600 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );
  static TextStyle font32ColorMainBlueBold = TextStyle(
      color: ColorManger.mainBlue,
      fontSize: 32.sp,
      fontWeight: FontWeight.bold);
  static const TextStyle font12ColorGreyW400 = TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey);
}
