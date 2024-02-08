import 'package:doctor_appionment/config/router/app_routes.dart';
import 'package:doctor_appionment/core/utils/extentions/extenstion.dart';
import 'package:doctor_appionment/features/auth/manager/login_cubit.dart';
import 'package:doctor_appionment/features/auth/manager/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginLisener extends StatelessWidget {
  const LoginLisener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, LoginState>(
      listener: (context, state) {
        state.whenOrNull(
          error: (message) {
            Navigator.of(context).pop();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(message),
              ),
            );
          },
          loading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: Colors.blue,
                ),
              ),
            );
          },
          success: (data) {
            Navigator.of(context).pop();
            context.pushReplacementNamed(routeName: AppRoutes.home);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
