import 'package:flutter/material.dart';
import 'package:pioneer_app/core/widgets/layout/orientation_widget.dart';
import 'package:pioneer_app/features/auth/presentation/welcome/widgets/layouts/welcome_screen_landscape.dart';
import 'package:pioneer_app/features/auth/presentation/welcome/widgets/layouts/welcome_screen_portrait.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const OrientationWidget(
      portrait: WelcomeScreenPortrait(),
      landscape: WelcomeScreenLandscape(),
    );
  }
}
