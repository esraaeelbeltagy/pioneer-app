import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pioneer_app/core/extensions/theme_extension.dart';
import 'package:pioneer_app/core/widgets/layout/profile_scaffold.dart';
import 'package:pioneer_app/features/student/profile/presentation/profile/widgets/student_profile_app_bar.dart';

class StudentProfileScreen extends StatelessWidget {
  const StudentProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ProfileScaffold(
      appBar: StudentProfileAppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              margin: const EdgeInsets.only(
                top: 24,
                right: 24,
                left: 24,
                bottom: 10,
              ).r,
              padding: const EdgeInsets.all(10).r,
              decoration: BoxDecoration(
                color: context.theme.scaffoldBackgroundColor,
                borderRadius: BorderRadius.circular(25).r,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 0,
                right: 32,
                left: 32,
                bottom: 0,
              ).r,
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: context.theme.scaffoldBackgroundColor,
                      borderRadius: BorderRadiusDirectional.horizontal(
                        start: Radius.circular(25.r),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 14.w,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: context.theme.scaffoldBackgroundColor,
                      borderRadius: BorderRadiusDirectional.horizontal(
                        end: Radius.circular(25.r),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                color: context.theme.scaffoldBackgroundColor,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(25),
                ).r,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
