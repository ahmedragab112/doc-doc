import 'package:doctor_appionment/config/router/app_router.dart';
import 'package:flutter/material.dart';

class DocDoc extends StatelessWidget {
  const DocDoc({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      onGenerateRoute: AppRouter.onGenerateRoutes,
      debugShowCheckedModeBanner: false,
      
    );
  }
}
