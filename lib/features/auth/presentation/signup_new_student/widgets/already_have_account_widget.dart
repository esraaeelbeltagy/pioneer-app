import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pioneer_app/config/routes/app_routes.dart';
import 'package:pioneer_app/core/utils/app_strings.dart';

class AlreadyHaveAccountWidget extends StatelessWidget {
  const AlreadyHaveAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
          text: "${AppStrings.alreadyHaveAccount} ",
          style: TextStyle(
            fontSize: 8.sp,
          ),
          children: [
            WidgetSpan(
              child: GestureDetector(
                onTap: () => _goToLogin(context),
                child: Text(
                  AppStrings.login,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 8.sp,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.grey,
                  ),
                ),
              ),
            ),
          ]),
    );
  }

  void _goToLogin(BuildContext context) {
    context.pushReplacementNamed(Routes.signIn);
  }
}
