import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Color(0xFF170D5C);
  static  Color hintColor = const Color(0xFF242760).withOpacity(.05);
  static const Color secondaryColor = Color(0xFF990000);
  static const Color darkColor = Color(0xFF202244);
  static const Color appBarColor = Color(0xFFE2E2E2);
  static const Color black1 = Color(0xFF050505);
  static const Color black2 = Color(0xFF121212);
  static const Color dot = Color(0xFFD5E2F5);
  static const Color grey = Color(0xFF666666);

  static  LinearGradient lightBlue = LinearGradient(colors: [
    const Color(0xFF05A9E2),
    const Color(0xFF68A4B0),
    const Color(0xFF68A4B0).withOpacity(.5),
    const  Color(0xFF68A4B0).withOpacity(0),
  ]);

  static const Color white = Colors.white;
  static const Color indigo = Color(0XFF6872A1);
  static const Color error = Color(0xFFFF445D);
}
