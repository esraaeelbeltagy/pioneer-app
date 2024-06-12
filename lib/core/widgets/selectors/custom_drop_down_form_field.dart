import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pioneer_app/core/extensions/theme_extension.dart';
import 'package:pioneer_app/core/utils/app_colors.dart';

class CustomDropDownFormField<T> extends StatelessWidget {
  final String hint;
  final T value;
  final List<T> items;
  final void Function(T?)? onChanged;
  final String? Function(T?)? validator;
  const CustomDropDownFormField({
    super.key,
    required this.hint,
    required this.value,
    required this.items,
    this.onChanged,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      value: value,
      isExpanded: true,
      validator: validator,
      icon: const Icon(Icons.keyboard_arrow_down),
      decoration: InputDecoration(
        filled: true,
        fillColor: context.theme.scaffoldBackgroundColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(
            color: AppColors.error,
          ),
        ),
        contentPadding: const EdgeInsets.all(14.0).r,
        isDense: true,
      ),
      hint: Text(
        hint,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
        ),
      ),
      items: items
          .map((university) => DropdownMenuItem<T>(
              value: university, child: Text(university.toString())))
          .toList(),
      onChanged: onChanged,
    );
  }
}
