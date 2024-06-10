import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pioneer_app/app.dart';
import 'package:pioneer_app/locator.dart';

void main() async {
  
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp ,
    DeviceOrientation.portraitDown,
  ]);
  initLocator();
  runApp(const Pioneer());

}
