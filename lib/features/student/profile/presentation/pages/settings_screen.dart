import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_colors.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Settings",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "Settings",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        height: 1.6.h,
                      ),
                ),
              ),
              text(context, "Account"),
              Section(
                widget: const Column(
                  children: [
                    Item(
                        icon: Icons.person, iconSize: 20, text: "Edit Profile"),
                    Item(icon: Icons.security, iconSize: 20, text: "Security"),
                    Item(
                        icon: Icons.notifications,
                        iconSize: 20,
                        text: "Notifications"),
                    Item(
                        icon: Icons.lock_outline,
                        iconSize: 20,
                        text: "Privacy"),
                  ],
                ),
              ),
              text(context, "Support & About"),
              Section(
                widget: const Column(
                  children: [
                    Item(
                        icon: Icons.credit_card,
                        iconSize: 20,
                        text: "My Subscribtion"),
                    Item(
                        icon: Icons.help_outline_rounded,
                        iconSize: 20,
                        text: "Help & Support"),
                    Item(
                        icon: Icons.announcement,
                        iconSize: 20,
                        text: "Terms and Policies"),
                  ],
                ),
              ),
              text(context, "Cache & cellular"),
              Section(
                widget: const Column(
                  children: [
                    Item(
                        icon: Icons.flag_outlined,
                        iconSize: 20,
                        text: "Report a problem"),
                    Item(
                        icon: Icons.supervisor_account_outlined,
                        iconSize: 20,
                        text: "Add account"),
                    Item(icon: Icons.logout, iconSize: 20, text: "Log out"),
                  ],
                ),
              ),
              text(context, "Actions"),
              Section(
                widget: const Column(
                  children: [
                    Item(
                        icon: Icons.delete_outline_outlined,
                        iconSize: 20,
                        text: "Free up space"),
                    Item(
                        icon: Icons.data_exploration_sharp,
                        iconSize: 20,
                        text: "Data Saver"),
                  ],
                ),
              ),
            ],
            
          ),
        ),
      ),
    );
  }

  Padding text(BuildContext context, String text) {
    return Padding(
      padding: EdgeInsets.all(7.sp),
      child: Text(
        text,
        style: Theme.of(context).textTheme.displayMedium,
      ),
    );
  }

// function
}

class Item extends StatelessWidget {
  const Item({
    super.key,
    required this.icon,
    required this.iconSize,
    required this.text,
  });

  final IconData icon;
  final double iconSize;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 7.h),
      child: Row(
        children: [
          Icon(
            icon,
            size: iconSize.sp,
            color: AppColors.black1,
          ),
          SizedBox(
            width: 15.w,
          ),
          Expanded(
            child: Text(
              text,
              style: Theme.of(context).textTheme.displayMedium,
            ),
          )
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class Section extends StatelessWidget {
  Section({
    super.key,
    required this.widget,
  });

  Widget widget;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.sp),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.hintColor,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: widget,
    );
  }
}
