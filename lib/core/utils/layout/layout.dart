import 'package:flutter/material.dart';

extension MediaQueryHelper on BuildContext  {
   double screenWidth() =>MediaQuery.of(this).size.width;
   double screenHeight()=> MediaQuery.of(this).size.height;
}