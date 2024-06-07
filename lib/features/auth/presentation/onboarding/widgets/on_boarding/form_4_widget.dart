
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/app_colors.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class Form4Widget extends StatefulWidget {
  const Form4Widget({super.key});

  @override
  State<Form4Widget> createState() => _Form4WidgetState();
}

class _Form4WidgetState extends State<Form4Widget> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 10.h),
      child: Container(
        width: 220.w,
        //height: 50.h,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.seconeryColor),
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Center(
          child: DropdownMenu<String>(
           
            width: 220.w,
            trailingIcon: const Icon(Icons.keyboard_arrow_down_outlined),
            inputDecorationTheme: InputDecorationTheme(
              
              iconColor: AppColors.black1,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
                borderSide: BorderSide.none,
              ),
            ),
            textStyle: TextStyle(
              color: AppColors.black1,
              fontSize: 13.sp,
              fontWeight: FontWeight.w500,
            ),
            initialSelection: list.first,
            onSelected: (String? value) {
              // This is called when the user selects an item.
              setState(() {
                dropdownValue = value!;
              });
            },
            dropdownMenuEntries:
                list.map<DropdownMenuEntry<String>>((String value) {
              return DropdownMenuEntry<String>(value: value, label: value);
            }).toList(),
          ),
        ),
      ),
    );
  }
}
