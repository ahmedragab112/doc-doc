import 'package:doctor_appionment/config/router/app_router.dart';
import 'package:doctor_appionment/config/router/app_routes.dart';
import 'package:doctor_appionment/config/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DocDoc extends StatelessWidget {
  const DocDoc({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: ThemeMode.light,
          initialRoute: AppRoutes.onBoardingScreen,
          onGenerateRoute: AppRouter.onGenerateRoutes,
          debugShowCheckedModeBanner: false,
          locale: const Locale('en'),
        );
      },
    );
  }
}
