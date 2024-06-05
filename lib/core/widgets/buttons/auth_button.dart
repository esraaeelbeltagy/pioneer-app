import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pioneer_app/core/utils/icons.dart';

class AuthButton extends StatelessWidget {
  final AuthAction action;
  final VoidCallback? onPressed;
  const AuthButton({
    super.key,
    required this.action,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(5).r,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.r),
          border: Border.all(color: Colors.grey),
        ),
        child: _buildIcon(),
      ),
    );
  }

  Widget _buildIcon() {
    switch (action) {
      case AuthAction.google:
        return SvgPicture.asset(
          AppIcons.googleLogo,
        );
      case AuthAction.facebook:
        return SvgPicture.asset(
          AppIcons.facebookLogo,
        );
    }
  }
}

enum AuthAction {
  google,
  facebook,
}
