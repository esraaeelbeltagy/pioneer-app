import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pioneer_app/core/extensions/theme_extension.dart';
import 'package:pioneer_app/core/utils/app_strings.dart';
import 'package:pioneer_app/core/widgets/text_fields/custom_underline_text_field.dart';
import 'package:pioneer_app/core/widgets/tiles/custom_expansion_tile.dart';
import 'package:pioneer_app/core/widgets/tiles/custom_list_tile.dart';

class StudentListCard extends StatelessWidget {
  const StudentListCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.theme.scaffoldBackgroundColor,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(25),
        ).r,
      ),
      child: const _StudentItemsList(),
    );
  }
}

class _StudentItemsList extends StatelessWidget {
  const _StudentItemsList();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(
        right: 48,
        left: 48,
        top: 32,
        bottom: kToolbarHeight + kToolbarHeight * 0.5,
      ).r,
      children: _items(context),
    );
  }

  List<Widget> _items(BuildContext context) {
    return [
      CustomExpansionTile(
        title: AppStrings.educationInformation,
        childrenPadding: const EdgeInsets.only(
          right: 24,
          left: 24,
          top: 2,
          bottom: 16,
        ).r,
        children: _educationInfoList(context),
      ),
      SizedBox(height: 14.h),
      CustomListTile(
        title: AppStrings.applicationStatus,
        onTap: () {},
      ),
      SizedBox(height: 14.h),
      CustomListTile(
        title: AppStrings.accommodation,
        onTap: () {},
      ),
      SizedBox(height: 14.h),
      CustomListTile(
        title: AppStrings.bestSpots,
        onTap: () {},
      ),
      SizedBox(height: 14.h),
      CustomListTile(
        title: AppStrings.community,
        onTap: () {},
      ),
      SizedBox(height: 14.h),
      CustomListTile(
        title: AppStrings.events,
        onTap: () {},
      ),
      SizedBox(height: 14.h),
      CustomListTile(
        title: AppStrings.carsTable,
        onTap: () {},
      ),
      SizedBox(height: 14.h),
      CustomListTile(
        title: AppStrings.urgentCase,
        onTap: () {},
      ),
    ];
  }

  List<Widget> _educationInfoList(BuildContext context) {
    return [
      CustomUnderlineTextField(
        readOnly: true,
        labelText: AppStrings.university,
        labelStyle: context.theme.textTheme.bodySmall!.copyWith(
          fontWeight: FontWeight.normal,
        ),
        prefixIcon: const Icon(
          Icons.business_center_outlined,
          color: Colors.grey,
        ),
      ),
      CustomUnderlineTextField(
        readOnly: true,
        labelText: AppStrings.major,
        labelStyle: context.theme.textTheme.bodySmall!.copyWith(
          fontWeight: FontWeight.normal,
        ),
        prefixIcon: const Icon(
          Icons.cast_for_education_outlined,
          color: Colors.grey,
        ),
      ),
      CustomUnderlineTextField(
        readOnly: true,
        labelText: AppStrings.inTake,
        labelStyle: context.theme.textTheme.bodySmall!.copyWith(
          fontWeight: FontWeight.normal,
        ),
        prefixIcon: const Icon(
          Icons.edit_outlined,
          color: Colors.grey,
        ),
      ),
      CustomUnderlineTextField(
        readOnly: true,
        labelText: AppStrings.cgpa,
        labelStyle: context.theme.textTheme.bodySmall!.copyWith(
          fontWeight: FontWeight.normal,
        ),
        prefixIcon: const Icon(
          Icons.list_outlined,
          color: Colors.grey,
        ),
      ),
    ];
  }
}
