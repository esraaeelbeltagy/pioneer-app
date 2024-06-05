import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pioneer_app/core/widgets/layout/styled_scaffold.dart';
import 'package:pioneer_app/features/auth/presentation/choose_role/widgets/sections/choose_role_button_section.dart';
import 'package:pioneer_app/features/auth/presentation/choose_role/widgets/sections/choose_role_logo_section.dart';

class ChooseRoleScreenLandscape extends StatelessWidget {
  const ChooseRoleScreenLandscape({super.key});

  @override
  Widget build(BuildContext context) {
    return StyledScaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Expanded(
              child: ChooseRoleLogoSection(),
            ),
            SizedBox(width: 20.w),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12).r,
                child: const Center(
                  child: ChooseRoleButtonsSection(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
