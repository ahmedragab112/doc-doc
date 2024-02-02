import 'package:doctor_appionment/config/router/app_routes.dart';
import 'package:doctor_appionment/core/utils/extentions/extenstion.dart';
import 'package:doctor_appionment/core/utils/helper/custom_button.dart';
import 'package:doctor_appionment/core/utils/helper/custom_textform_filed.dart';
import 'package:doctor_appionment/core/utils/layout/spaceing.dart';
import 'package:doctor_appionment/core/utils/style/app_text_style.dart';
import 'package:doctor_appionment/features/auth/view/widgets/already_have_an_account.dart';
import 'package:doctor_appionment/features/auth/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isabscure = false;
  final formKey = GlobalKey<FormState>();
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
              verticalSpace(8),
              Text(
                "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                style: AppTextStyle.font12ColorGreyW400.copyWith(fontSize: 14),
              ),
              verticalSpace(18),
              Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const CustomFormFiled(
                      hintText: 'Email',
                      obscureText: false,
                    ),
                    verticalSpace(16),
                    CustomFormFiled(
                      hintText: 'Password',
                      obscureText: isabscure,
                      icon: InkWell(
                        onTap: () {
                          isabscure = !isabscure;
                          setState(() {});
                        },
                        child: Icon(isabscure
                            ? Icons.visibility_off
                            : Icons.remove_red_eye),
                      ),
                    ),
                    verticalSpace(16),
                    Text(
                      'Forgot Password?',
                      style: AppTextStyle.font12ColorMainBlueRegular,
                    ),
                  ],
                ),
              ),
              verticalSpace(32),
              CustomButton(
                text: 'Login',
                onPressed: () {
                  context.pushNamed(routeName: AppRoutes.home);
                },
              ),
              verticalSpace(50),
              const CustomRichText(),
              verticalSpace(30),
              const DontHaveAnAccount()
            ],
          ).setPadding(context,
              vertical: 32.h, horizontal: 32.w, enableMediaQuery: false),
        ),
      ),
    );
  }
}
