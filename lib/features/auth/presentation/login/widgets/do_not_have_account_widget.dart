import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pioneer_app/config/routes/app_routes.dart';
import 'package:pioneer_app/core/utils/app_strings.dart';

class DoNotHaveAccountWidget extends StatelessWidget {
  const DoNotHaveAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
          text: "${AppStrings.notHavingAccount} ",
          style: TextStyle(
            fontSize: 8.sp,
          ),
          children: [
            WidgetSpan(
              child: GestureDetector(
                onTap: () => _goToChooseRole(context),
                child: Text(
                  AppStrings.signup,
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

  void _goToChooseRole(BuildContext context) {
    context.pushReplacementNamed(Routes.chooseRole);
  }
}
