import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pioneer_app/core/extensions/theme_extension.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final Widget? subtitle, leading;
  final Widget trailing;
  final Color backgroundColor;
  final void Function()? onTap;
  const CustomListTile({
    super.key,
    required this.title,
    this.subtitle,
    this.leading,
    this.trailing = const Icon(
      Icons.chevron_right,
      size: 40,
      color: Colors.grey,
    ),
    this.backgroundColor = const Color(0xFFE0E0E0),
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListTile(
        tileColor: backgroundColor,
        contentPadding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 12.w),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
          side: BorderSide.none,
        ),
        leading: leading,
        title: Text(
          title,
          style: context.textTheme.bodyLarge!.copyWith(
            fontSize: 14.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: subtitle,
        trailing: trailing,
        onTap: onTap,
      ),
    );
  }
}
