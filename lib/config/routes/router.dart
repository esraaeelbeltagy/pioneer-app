import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pioneer_app/features/student/profile/presentation/pages/settings_screen.dart';

import 'app_routes.dart';

final GoRouter router = GoRouter(
  initialLocation: Routes.settings,
  routes: [
    GoRoute(
      
      path:Routes.settings,
      name: Routes.settings,
      builder: (BuildContext context, GoRouterState state) {
        return const SettingsScreen();
      },
    ),
  ],
);