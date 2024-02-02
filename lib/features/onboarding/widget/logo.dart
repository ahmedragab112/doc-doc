import 'package:doctor_appionment/core/utils/string/app_string.dart';
import 'package:doctor_appionment/core/utils/style/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
        AppString.docDocLogo,
          width: 38,
          height: 38,
          fit: BoxFit.fill,
        ),
        SizedBox(
          width: 8.w,
        ),
         Text(AppString.title, style: AppTextStyle.font16ColorBlackW600)
      ],
    );
  }
}
