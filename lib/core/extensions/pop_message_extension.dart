import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pioneer_app/core/extensions/theme_extension.dart';
import 'package:pioneer_app/core/utils/app_colors.dart';

extension PopMessageExtension on BuildContext {
  static bool _isLoading = false;
  void showLoading() {
    _isLoading = true;
    showDialog(
      context: this,
      barrierDismissible: false,
      builder: (_) {
        return AlertDialog.adaptive(
          content: SizedBox(
            width: 64.w,
            height: 64.h,
            child: const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          ),
        );
      },
    );
  }

  void popLoading() {
    if (_isLoading) Navigator.pop(this);
  }

  void showSuccessMessage(String message) {
    if (_isLoading) Navigator.pop(this);
    ScaffoldMessenger.of(this)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          dismissDirection: DismissDirection.horizontal,
          backgroundColor: theme.primaryColor,
          content: Text(
            message,
            style: const TextStyle(color: AppColors.white),
          ),
        ),
      );
  }

  void showErrorMessage(String message) {
    if (_isLoading) Navigator.pop(this);
    ScaffoldMessenger.of(this)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          dismissDirection: DismissDirection.horizontal,
          backgroundColor: AppColors.error,
          content: Text(
            message,
            style: const TextStyle(color: AppColors.white),
          ),
        ),
      );
  }
}
