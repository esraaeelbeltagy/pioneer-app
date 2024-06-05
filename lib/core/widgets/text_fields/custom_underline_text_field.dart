import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomUnderlineTextField extends StatelessWidget {
  final void Function()? onTap;
  final void Function(String)? onChanged;
  final TextEditingController? controller;
  final bool obscureText, readOnly;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final String? labelText, hintText;
  final Widget? prefixIcon, suffixIcon;
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
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap: onTap,
      onChanged: onChanged,
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      readOnly: readOnly,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
