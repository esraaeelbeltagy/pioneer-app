import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pioneer_app/core/extensions/theme_extension.dart';
import 'package:pioneer_app/core/utils/app_strings.dart';

class RememberMeAndForgotPasswordWidget extends StatelessWidget {
  final ValueNotifier<bool> rememberMe;
  const RememberMeAndForgotPasswordWidget({
    super.key,
    required this.rememberMe,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.0.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ValueListenableBuilder(
                valueListenable: rememberMe,
                builder: (context, value, _) {
                  return SizedBox(
                    width: 20.w,
                    height: 20.h,
                    child: FittedBox(
                      child: Checkbox(
                        value: value,
                        onChanged: _toggleRememberMe,
                      ),
                    ),
                  );
                },
              ),
              Text(
                AppStrings.rememberMe,
                style: context.textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.normal,
                  fontSize: 6.sp,
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () => _goToForgotPassword(context),
            child: Text(
              AppStrings.forgotPassword,
              style: context.textTheme.bodySmall?.copyWith(
                color: Colors.grey,
                fontWeight: FontWeight.normal,
                fontSize: 6.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _toggleRememberMe(bool? value) {
    rememberMe.value = value!;
  }

  void _goToForgotPassword(BuildContext context) {}
}
