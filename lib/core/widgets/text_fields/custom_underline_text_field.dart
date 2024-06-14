import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomUnderlineTextField extends StatelessWidget {
  final void Function()? onTap;
  final void Function(String)? onChanged;
  final TextEditingController? controller;
  final bool obscureText, readOnly;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final String? labelText, hintText;
  final Widget? prefixIcon, suffixIcon;
  final String? Function(String?)? validator;
  final TextStyle? labelStyle, hintStyle;
  const CustomUnderlineTextField({
    super.key,
    this.onTap,
    this.onChanged,
    this.controller,
    this.obscureText = false,
    this.readOnly = false,
    this.keyboardType,
    this.inputFormatters,
    this.labelText,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.validator,
    this.labelStyle,
    this.hintStyle,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      onChanged: onChanged,
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      readOnly: readOnly,
      validator: validator,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 0),
        suffixStyle: TextStyle(fontSize: 8.sp),
        prefixStyle: TextStyle(fontSize: 8.sp),
        labelText: labelText,
        labelStyle: labelStyle,
        hintText: hintText,
        hintStyle: hintStyle,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
