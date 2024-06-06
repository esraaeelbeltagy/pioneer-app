import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pioneer_app/features/auth/presentation/choose_role/pages/choose_role_screen.dart';
import 'package:pioneer_app/features/auth/presentation/choose_student_signup/pages/choose_student_signup_screen.dart';
import 'package:pioneer_app/features/auth/presentation/login/bloc/login_bloc.dart';
import 'package:pioneer_app/features/auth/presentation/login/pages/login_screen.dart';
import 'package:pioneer_app/features/auth/presentation/onboarding/pages/on_boarding_screen.dart';
import 'package:pioneer_app/features/auth/presentation/signup_new_student/bloc/signup_new_student_bloc.dart';
import 'package:pioneer_app/features/auth/presentation/signup_new_student/pages/signup_new_student_screen.dart';
import 'package:pioneer_app/features/auth/presentation/signup_parent/bloc/signup_parent_bloc.dart';
import 'package:pioneer_app/features/auth/presentation/signup_parent/pages/signup_parent_screen.dart';
import 'package:pioneer_app/features/auth/presentation/splash/pages/splash_screen.dart';
import 'package:pioneer_app/features/auth/presentation/welcome/pages/welcome_screen.dart';
import 'package:pioneer_app/features/student/profile/presentation/pages/settings_screen.dart';
import 'package:pioneer_app/locator.dart';

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
      path: Routes.chooseRole,
      name: Routes.chooseRole,
      builder: (BuildContext context, GoRouterState state) {
        return const ChooseRoleScreen();
      },
    ),
    GoRoute(
      path: Routes.chooseStudent,
      name: Routes.chooseStudent,
      builder: (BuildContext context, GoRouterState state) {
        return const ChooseStudentSignUpScreen();
      },
    ),
    GoRoute(
      path: Routes.signIn,
      name: Routes.signIn,
      builder: (BuildContext context, GoRouterState state) {
        return BlocProvider.value(
          value: locator<LoginBloc>(),
          child: const LoginScreen(),
        );
      },
    ),
    GoRoute(
      path: Routes.signUpParent,
      name: Routes.signUpParent,
      builder: (BuildContext context, GoRouterState state) {
        return BlocProvider.value(
          value: locator<SignUpParentBloc>(),
          child: const SignUpParentScreen(),
        );
      },
    ),
    GoRoute(
      path: Routes.signUpNewStudent,
      name: Routes.signUpNewStudent,
      builder: (BuildContext context, GoRouterState state) {
        return BlocProvider.value(
          value: locator<SignUpNewStudentBloc>(),
          child: const SignUpNewStudentScreen(),
        );
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
