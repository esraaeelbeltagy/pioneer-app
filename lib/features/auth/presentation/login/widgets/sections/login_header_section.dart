import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pioneer_app/core/extensions/theme_extension.dart';
import 'package:pioneer_app/core/utils/app_strings.dart';

class LoginHeaderSection extends StatelessWidget {
  const LoginHeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(AppStrings.loginHeader1),
        SizedBox(
          height: 15.h,
        ),
        Text(
          AppStrings.loginHeader2,
          style: context.textTheme.bodyMedium
              ?.copyWith(fontWeight: FontWeight.normal),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          AppStrings.loginHeader3,
          style: context.textTheme.bodyMedium
              ?.copyWith(fontWeight: FontWeight.normal),
        ),
        Divider(
          thickness: 1,
          height: 0,
          endIndent: 76.w,
          color: context.textTheme.bodyMedium?.color,
        ),
      ],
    );
  }
}
