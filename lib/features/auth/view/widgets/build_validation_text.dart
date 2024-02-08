import 'package:doctor_appionment/core/colors/colors.dart';
import 'package:doctor_appionment/core/utils/layout/spaceing.dart';
import 'package:doctor_appionment/core/utils/style/app_text_style.dart';
import 'package:flutter/material.dart';

class BuildValidationText extends StatelessWidget {
  const BuildValidationText(
      {super.key, required this.isValidated, required this.text});
  final bool isValidated;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 3,
          backgroundColor: ColorManger.greyColor,
        ),
        const HorizantelSpace(10),
        Text(
          text,
          style: AppTextStyle.font14ColorBlackMeduim.copyWith(
              decorationColor:
                  isValidated ? ColorManger.mainBlue : ColorManger.greyColor,
              color: isValidated ? Colors.green : ColorManger.greyColor,
              decoration: isValidated ? TextDecoration.lineThrough : null,
              decorationThickness: 2),
        )
      ],
    );
  }
}
