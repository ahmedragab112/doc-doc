import 'package:doctor_appionment/config/router/app_routes.dart';
import 'package:doctor_appionment/features/auth/view/screens/home_view.dart';
import 'package:doctor_appionment/features/onboarding/screen/onboarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route<Widget> onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.loginScreen:
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (_, animation, __) => const Login(),
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
