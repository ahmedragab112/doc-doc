import 'package:doctor_appionment/config/router/app_routes.dart';
import 'package:doctor_appionment/features/auth/data/view/screens/home_view.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route<Widget> onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.homePage:
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (_, animation, __) => const Home(),
          transitionDuration: const Duration(seconds: 2),
          transitionsBuilder: (_, animation, __, child) => FadeTransition(
            opacity: animation,
            child: child,
          ),
        );

      default:
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (_, animation, __) => const Home(),
          transitionDuration: const Duration(seconds: 2),
          transitionsBuilder: (_, animation, __, child) => FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
    }
  }
}
