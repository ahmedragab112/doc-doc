import 'package:doctor_appionment/core/utils/helper/app_regex.dart';
import 'package:doctor_appionment/core/utils/helper/custom_textform_filed.dart';
import 'package:doctor_appionment/core/utils/layout/spaceing.dart';
import 'package:doctor_appionment/core/utils/style/app_text_style.dart';
import 'package:doctor_appionment/features/auth/manager/login_cubit.dart';
import 'package:doctor_appionment/features/auth/view/widgets/login_password_medual.dart';
import 'package:doctor_appionment/features/auth/view/widgets/password_validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({
    super.key,
  });

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool uperCase = false;
  bool lowerCase = false;
  bool number = false;
  bool specialChar = false;
  late TextEditingController passwordController;
  bool minLength = false;
  @override
  void initState() {
    super.initState();
    passwordController = context.read<AuthCubit>().passwordController;
    setUpValidation();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<AuthCubit>().formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomFormFiled(
            hintText: 'Email',
            controller: context.read<AuthCubit>().emailController,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'please enter an valid email';
              }
              return null;
            },
          ),
          const VerticalSpace(16),
          PasswordMedual(
            controller: context.read<AuthCubit>().passwordController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'please enter an password';
              }
              return null;
            },
          ),
          const VerticalSpace(16),
          PasswordValidation(
            uperCase: uperCase,
            lowerCase: lowerCase,
            number: number,
            specialChar: specialChar,
            minLength: minLength,
          ),
          const VerticalSpace(16),
          Text(
            'Forgot Password?',
            style: AppTextStyle.font12ColorMainBlueRegular,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    passwordController.dispose();
  }

  void setUpValidation() {
    passwordController.addListener(() {
      setState(() {
        uperCase = AppRegex.hasUpperCase(passwordController.text);
        lowerCase = AppRegex.hasLowerCase(passwordController.text);
        number = AppRegex.hasNumber(passwordController.text);
        specialChar = AppRegex.hasSpecialCharacter(passwordController.text);
        minLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }
}
