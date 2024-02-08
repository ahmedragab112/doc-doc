import 'package:doctor_appionment/config/router/app_routes.dart';
import 'package:doctor_appionment/core/di/dependancy_injection.dart';
import 'package:doctor_appionment/features/auth/manager/login_cubit.dart';
import 'package:doctor_appionment/features/auth/view/screens/login_view.dart';
import 'package:doctor_appionment/features/auth/view/screens/sign_up.dart';
import 'package:doctor_appionment/features/home/view/home.dart';
import 'package:doctor_appionment/features/onboarding/screen/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  static Route<Widget> onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.loginScreen:
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (_, animation, __) => BlocProvider(
            create: (context) => getit<AuthCubit>(),
            child: const Login(),
          ),
          transitionDuration: const Duration(seconds: 2),
          transitionsBuilder: (_, animation, __, child) => FadeTransition(
            opacity: animation,
            child: child,
          ),
        );

      case AppRoutes.onBoardingScreen:
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (_, animation, __) => const OnBoardingScreen(),
          transitionDuration: const Duration(seconds: 2),
          transitionsBuilder: (_, animation, __, child) => FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
      case AppRoutes.home:
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (_, animation, __) => const Home(),
          transitionDuration: const Duration(seconds: 2),
          transitionsBuilder: (_, animation, __, child) => FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
      case AppRoutes.regsisterScreen:
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (_, animation, __) => const SignUp(),
          transitionDuration: const Duration(seconds: 2),
          transitionsBuilder: (_, animation, __, child) => FadeTransition(
            opacity: animation,
            child: child,
          ),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text('un define route'),
            ),
          ),
        );
    }
  }
}
