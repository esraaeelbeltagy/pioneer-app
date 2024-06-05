import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pioneer_app/core/widgets/layout/styled_scaffold.dart';
import 'package:pioneer_app/features/auth/presentation/welcome/widgets/sections/welcome_body_section.dart';
import 'package:pioneer_app/features/auth/presentation/welcome/widgets/sections/welcome_buttons_section.dart';
import 'package:pioneer_app/features/auth/presentation/welcome/widgets/sections/welcome_header_section.dart';
import 'package:pioneer_app/features/auth/presentation/welcome/widgets/sections/welcome_logo_section.dart';

class WelcomeScreenLandscape extends StatelessWidget {
  const WelcomeScreenLandscape({super.key});

  @override
  Widget build(BuildContext context) {
    return StyledScaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Expanded(
              child: WelcomeLogoSection(),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(12).r,
                children: [
                  const WelcomeHeaderSection(),
                  SizedBox(height: 40.h),
                  const WelcomeBodySection(),
                  SizedBox(height: 40.h),
                  const WelcomeButtonsSection(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
