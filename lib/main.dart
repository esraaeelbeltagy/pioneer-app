import 'package:flutter/material.dart';
import 'package:pioneer_app/app.dart';
import 'package:pioneer_app/locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initLocator();
  runApp(const Pioneer());
}
