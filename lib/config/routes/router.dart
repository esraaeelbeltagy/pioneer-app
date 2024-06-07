import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pioneer_app/features/auth/presentation/onboarding/pages/on_boarding_screen.dart';
import 'package:pioneer_app/features/student/tasks/presentation/pages/add_task_screen.dart';


import 'app_routes.dart';

final GoRouter router = GoRouter(
  initialLocation: Routes.addTask,
  routes: [
    GoRoute(
      path: Routes.addTask,
      name: Routes.addTask,
      builder: (BuildContext context, GoRouterState state) {
        return const AddTaskScreen();
      },
    ),
   
    
  ],
);
