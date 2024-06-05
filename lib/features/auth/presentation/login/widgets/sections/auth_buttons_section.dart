import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pioneer_app/core/widgets/buttons/auth_button.dart';

class AuthButtonsSection extends StatelessWidget {
  const AuthButtonsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AuthButton(
          action: AuthAction.google,
          onPressed: () => _googleLogin(context),
        ),
        SizedBox(
          width: 10.w,
        ),
        AuthButton(
          action: AuthAction.facebook,
          onPressed: () => _facebookLogin(context),
        ),
      ],
    );
  }

  void _googleLogin(BuildContext context) {}

  void _facebookLogin(BuildContext context) {}
}
