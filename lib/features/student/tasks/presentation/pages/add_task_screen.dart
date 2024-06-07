import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_colors.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({super.key});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Add Task",
          style: TextStyle(color: AppColors.black1),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 35.w, vertical: 20.h),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Add your Task",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
           SizedBox(height: 15.h,),
           
            const InputCustomFeild(),
              SizedBox(height: 15.h,),
            SizedBox(
              height: 35.h,
              child: CustomButton(
                color: AppColors.seconeryColor,
                widget: Text(
                  "Submit",
                  style: TextStyle(
                    color: AppColors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp,
                    height: .2,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.color,
    required this.widget,
  });
  final Color color;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
        ),
        child: widget);
  }
}

class InputCustomFeild extends StatelessWidget {
  const InputCustomFeild({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      cursorColor: AppColors.black1,
      cursorHeight: 15.h,
      style: Theme.of(context).textTheme.bodySmall,
      maxLines: 7,
      controller: TextEditingController(),
   
      decoration: InputDecoration(
        
        hintText: "Enter your required here",
        hintStyle: TextStyle(
          color: AppColors.grey,
          fontSize: 11.sp,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: const BorderSide(color: AppColors.dot, width: .1),
        ),
      ),
    );
  }
}
