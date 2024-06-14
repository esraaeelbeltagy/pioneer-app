import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pioneer_app/core/widgets/layout/profile_scaffold.dart';
import 'package:pioneer_app/features/student/profile/presentation/profile/widgets/profile_divider_widget.dart';
import 'package:pioneer_app/features/student/profile/presentation/profile/widgets/student_list_card.dart';
import 'package:pioneer_app/features/student/profile/presentation/profile/widgets/student_profile_app_bar.dart';
import 'package:pioneer_app/features/student/profile/presentation/profile/widgets/student_profile_card.dart';
import 'package:pioneer_app/features/student/profile/presentation/profile/widgets/university_and_id_card.dart';

class StudentProfileScreen extends StatelessWidget {
  const StudentProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ProfileScaffold(
      appBar: StudentProfileAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const StudentProfileCard(),
          const UniversityAndIDCard(),
          const ProfileDividerWidget(),
          SizedBox(
            height: 5.h,
          ),
          const Expanded(
            flex: 3,
            child: StudentListCard(),
          ),
        ],
      ),
    );
  }
}
