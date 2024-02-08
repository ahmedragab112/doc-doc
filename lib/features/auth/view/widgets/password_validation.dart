import 'package:doctor_appionment/core/utils/layout/spaceing.dart';
import 'package:doctor_appionment/features/auth/view/widgets/build_validation_text.dart';
import 'package:flutter/material.dart';

class PasswordValidation extends StatelessWidget {
  const PasswordValidation(
      {super.key,
      required this.uperCase,
      required this.lowerCase,
      required this.number,
      required this.specialChar,
      required this.minLength});
  final bool uperCase;
  final bool lowerCase;
  final bool number;
  final bool specialChar;
  final bool minLength;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BuildValidationText(
          isValidated: uperCase,
          text: 'At Least One Uppercase',
        ),
        const VerticalSpace(2),
        BuildValidationText(
          isValidated: lowerCase,
          text: 'At Least One Lowercase',
        ),
        const VerticalSpace(2),
        BuildValidationText(
          isValidated: minLength,
          text: 'At Least Eight Characters Long',
        ),
        const VerticalSpace(2),
        BuildValidationText(
          isValidated: number,
          text: 'At Least One Number',
        ),
        const VerticalSpace(2),
        BuildValidationText(
          isValidated: specialChar,
          text: 'At Least One Special Character',
        ),
      ],
    );
  }
}
