import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pioneer_app/core/widgets/layout/styled_scaffold.dart';
import 'package:pioneer_app/features/auth/presentation/welcome/widgets/sections/welcome_body_section.dart';
import 'package:pioneer_app/features/auth/presentation/welcome/widgets/sections/welcome_buttons_section.dart';
import 'package:pioneer_app/features/auth/presentation/welcome/widgets/sections/welcome_header_section.dart';
import 'package:pioneer_app/features/auth/presentation/welcome/widgets/sections/welcome_logo_section.dart';

class WelcomeScreenPortrait extends StatelessWidget {
  const WelcomeScreenPortrait({super.key});

  @override
  Widget build(BuildContext context) {
    return StyledScaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const WelcomeLogoSection(),
              SizedBox(height: 20.h),
              const WelcomeHeaderSection(),
              SizedBox(height: 40.h),
              const WelcomeBodySection(),
              SizedBox(height: 40.h),
              const WelcomeButtonsSection(),
            ],
          ),
        ),
      ),
    );
  }
}
