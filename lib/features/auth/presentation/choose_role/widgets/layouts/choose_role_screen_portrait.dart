import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pioneer_app/core/widgets/layout/styled_scaffold.dart';
import 'package:pioneer_app/features/auth/presentation/choose_role/widgets/sections/choose_role_button_section.dart';
import 'package:pioneer_app/features/auth/presentation/choose_role/widgets/sections/choose_role_logo_section.dart';

class ChooseRoleScreenPortrait extends StatelessWidget {
  const ChooseRoleScreenPortrait({super.key});

  @override
  Widget build(BuildContext context) {
    return StyledScaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const ChooseRoleLogoSection(),
              SizedBox(height: 60.h),
              const ChooseRoleButtonsSection(),
              SizedBox(height: 60.h),
            ],
          ),
        ),
      ),
    );
  }
}
