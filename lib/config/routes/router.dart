import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pioneer_app/features/auth/presentation/onboarding/pages/on_boarding_screen.dart';
import 'package:pioneer_app/features/auth/presentation/splash/pages/splash_screen.dart';
import 'package:pioneer_app/features/auth/presentation/welcome/pages/welcome_screen.dart';
import 'package:pioneer_app/features/student/profile/presentation/pages/settings_screen.dart';

import 'app_routes.dart';

final GoRouter router = GoRouter(
  initialLocation: Routes.splash,
  routes: [
    GoRoute(
      path: Routes.splash,
      name: Routes.splash,
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen();
      },
    ),
    GoRoute(
      path: Routes.welcome,
      name: Routes.welcome,
      builder: (BuildContext context, GoRouterState state) {
        return const WelcomeScreen();
      },
    ),
    GoRoute(
      path: Routes.onBoarding,
      name: Routes.onBoarding,
      builder: (BuildContext context, GoRouterState state) {
        return const OnBoardingScreen();
      },
    ),
    GoRoute(
      path: Routes.settings,
      name: Routes.settings,
      builder: (BuildContext context, GoRouterState state) {
        return const SettingsScreen();
      },
    ),
  ],
);
