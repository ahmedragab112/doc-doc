// ignore_for_file: file_names

import 'package:doctor_appionment/core/utils/string/app_string.dart';
import 'package:doctor_appionment/core/utils/style/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorLogo extends StatelessWidget {
  const DoctorLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          AppString.doctorBackGroundLogo,
        ),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white.withOpacity(0.0),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.14, 0.4],
            ),
          ),
          child: Image.asset(
            AppString.doctorImage,
          ),
        ),
        Positioned(
          bottom: 10,
          left: 0,
          right: 0,
          child: Text(
            AppString.description,
            textAlign: TextAlign.center,
            style: AppTextStyle.font32ColorMainBlueBold.copyWith(height: 1.5),
          ),
        ),
      ],
    );
  }
}
