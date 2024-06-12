import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pioneer_app/core/extensions/date_time_extension.dart';
import 'package:pioneer_app/core/utils/app_strings.dart';
import 'package:pioneer_app/core/widgets/selectors/custom_drop_down_form_field.dart';

class SignUpExistingStudentSelectionSection extends StatefulWidget {
  final ValueNotifier<String?> inTake, university;
  const SignUpExistingStudentSelectionSection(
      {super.key, required this.inTake, required this.university});

  @override
  State<SignUpExistingStudentSelectionSection> createState() =>
      _SignUpExistingStudentSelectionSectionState();
}

class _SignUpExistingStudentSelectionSectionState
    extends State<SignUpExistingStudentSelectionSection> {
  late final List<String> inTakes;

  final List<String> universities = [
    "UCSI University",
    "Tinaga National University",
    "Multimedia University",
    "Segi University",
  ];

  @override
  void initState() {
    inTakes = [
      [1, 6, 9].months(context).join(', '),
      9.month(context),
      1.month(context),
      [1, 3, 4].months(context).join(', '),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ValueListenableBuilder(
              valueListenable: widget.inTake,
              builder: (_, value, __) {
                return CustomDropDownFormField<String?>(
                  value: value,
                  items: inTakes,
                  validator: _inTakeValidator,
                  hint: AppStrings.selectInTake,
                  onChanged: _onInTakeChanged,
                );
              }),
        ),
        SizedBox(
          width: 10.w,
        ),
        Expanded(
          child: ValueListenableBuilder(
              valueListenable: widget.university,
              builder: (_, value, __) {
                return CustomDropDownFormField<String?>(
                  value: value,
                  items: universities,
                  validator: _universityValidator,
                  hint: AppStrings.selectUniversity,
                  onChanged: _onUniversityChanged,
                );
              }),
        ),
      ],
    );
  }

  void _onInTakeChanged(String? value) {
    widget.inTake.value = value;
  }

  void _onUniversityChanged(String? value) {
    widget.university.value = value;
  }

  String? _inTakeValidator(String? value) {
    if (value == null || value.trim().isEmpty) {
      return AppStrings.fieldRequiredError;
    }

    return null;
  }

  String? _universityValidator(String? value) {
    if (value == null || value.trim().isEmpty) {
      return AppStrings.fieldRequiredError;
    }

    return null;
  }
}
