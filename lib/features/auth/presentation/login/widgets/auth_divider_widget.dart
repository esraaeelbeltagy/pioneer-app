import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pioneer_app/core/extensions/theme_extension.dart';
import 'package:pioneer_app/core/utils/app_strings.dart';

class AuthDividerWidget extends StatelessWidget {
  const AuthDividerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            indent: 20.w,
            endIndent: 10.w,
            thickness: 1,
            color: context.theme.primaryColor,
          ),
        ),
        Text(
          AppStrings.or,
          style: context.textTheme.bodySmall?.copyWith(
            fontWeight: FontWeight.normal,
            fontSize: 8.sp,
          ),
        ),
        Expanded(
          child: Divider(
            indent: 10.w,
            endIndent: 20.w,
            thickness: 1,
            color: context.theme.primaryColor,
          ),
        ),
      ],
    );
  }
}
