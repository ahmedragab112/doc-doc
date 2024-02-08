import 'package:doctor_appionment/core/utils/helper/custom_button.dart';
import 'package:doctor_appionment/features/auth/data/models/login_model.dart';
import 'package:doctor_appionment/features/auth/manager/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      text: 'Login',
      onPressed: () {
        if (context.read<AuthCubit>().formKey.currentState!.validate()) {
          context.read<AuthCubit>().login(
                loginModel: LoginModel(
                  email: context.read<AuthCubit>().emailController.text,
                  password: context.read<AuthCubit>().passwordController.text,
                ),
              );
        }
      },
    );
  }
}
