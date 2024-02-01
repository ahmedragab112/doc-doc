import 'package:doctor_appionment/core/utils/extentions/extenstion.dart';
import 'package:doctor_appionment/core/utils/layout/layout.dart';
import 'package:doctor_appionment/features/auth/view/screens/test_page.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('ahmed ragab'),
            SizedBox(
              height: context.screenHeight() * .1,
            ),
            const Text('ahmed 2'),
            ElevatedButton(
                onPressed: () {
                  context.push(const TestPage());
                 
                },
                child: const Text('go to new screen'))
          ],
        ),
      ),
    );
  }
}
