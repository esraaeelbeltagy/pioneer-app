import 'package:flutter/cupertino.dart';
import 'package:pioneer_app/core/widgets/layout/orientation_widget.dart';
import 'package:pioneer_app/features/auth/presentation/choose_role/widgets/layouts/choose_role_screen_landscape.dart';
import 'package:pioneer_app/features/auth/presentation/choose_role/widgets/layouts/choose_role_screen_portrait.dart';

class ChooseRoleScreen extends StatelessWidget {
  const ChooseRoleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const OrientationWidget(
      portrait: ChooseRoleScreenPortrait(),
      landscape: ChooseRoleScreenLandscape(),
    );
  }
}
