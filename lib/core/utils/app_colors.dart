import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Color(0xFF170D5C);
  static const Color seconeryColor = Color(0xFF990000);
  static const Color darkColor = Color(0xFF202244);
  static const Color black1 = Color(0xFF050505);
  static const Color black2 = Color(0xFF121212);
  static  LinearGradient lightBlue = LinearGradient(colors: [
    const Color(0xFF05A9E2),
    const Color(0xFF68A4B0),
    const Color(0xFF68A4B0).withOpacity(.5),
    const  Color(0xFF68A4B0).withOpacity(0),
  ]);

  static const Color white = Colors.white;
  static const Color error = Colors.red;
}
