import 'package:doctor_appionment/core/utils/extentions/extenstion.dart';
import 'package:doctor_appionment/core/utils/layout/spaceing.dart';
import 'package:doctor_appionment/core/utils/style/app_text_style.dart';
import 'package:doctor_appionment/features/auth/view/widgets/already_have_an_account.dart';
import 'package:doctor_appionment/features/auth/view/widgets/custom_text.dart';
import 'package:doctor_appionment/features/auth/view/widgets/email_and_password.dart';
import 'package:doctor_appionment/features/auth/view/widgets/login_button.dart';
import 'package:doctor_appionment/features/auth/view/widgets/login_lisener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Welcome Back',
                style:
                    AppTextStyle.font32ColorMainBlueBold.copyWith(fontSize: 24),
                textAlign: TextAlign.start,
              ),
              const VerticalSpace(8),
              Text(
                "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                style: AppTextStyle.font12ColorGreyW400.copyWith(fontSize: 14),
              ),
              const VerticalSpace(18),
              const EmailAndPassword(),
              const VerticalSpace(32),
              const LoginButton(),
              const VerticalSpace(50),
              const CustomRichText(),
              const VerticalSpace(30),
              const DontHaveAnAccount(),
              const LoginLisener(),
            ],
          ).setPadding(context,
              vertical: 32.h, horizontal: 32.w, enableMediaQuery: false),
        ),
      ),
    );
  }
}
