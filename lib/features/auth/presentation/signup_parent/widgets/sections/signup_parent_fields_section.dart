import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:pioneer_app/core/utils/app_strings.dart';
import 'package:pioneer_app/core/widgets/text_fields/custom_underline_text_field.dart';

class SignUpParentFieldsSection extends StatelessWidget {
  final TextEditingController nameController,
      sonNameController,
      emailController,
      birthDayController,
      passwordController,
      confirmController;
  final ValueNotifier<bool> passwordVisibility, confirmVisibility;
  const SignUpParentFieldsSection({
    super.key,
    required this.nameController,
    required this.sonNameController,
    required this.emailController,
    required this.birthDayController,
    required this.passwordController,
    required this.confirmController,
    required this.passwordVisibility,
    required this.confirmVisibility,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomUnderlineTextField(
          controller: nameController,
          validator: _nameValidator,
          labelText: AppStrings.name,
          prefixIcon: const Icon(
            Icons.person,
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        CustomUnderlineTextField(
          controller: sonNameController,
          validator: _nameValidator,
          labelText: AppStrings.sonName,
          prefixIcon: const Icon(
            Icons.person,
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        CustomUnderlineTextField(
          controller: emailController,
          validator: _emailValidator,
          keyboardType: TextInputType.emailAddress,
          labelText: AppStrings.email,
          prefixIcon: const Icon(
            Icons.email,
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        CustomUnderlineTextField(
          onTap: () => _pickBirthday(context),
          controller: birthDayController,
          validator: _dateValidator,
          readOnly: true,
          labelText: AppStrings.birthday,
          hintText: AppStrings.dateFormat,
          prefixIcon: const Icon(
            Icons.cake_outlined,
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        ValueListenableBuilder(
          valueListenable: passwordVisibility,
          builder: (context, value, _) {
            return CustomUnderlineTextField(
              controller: passwordController,
              validator: _passwordValidator,
              obscureText: !value,
              labelText: AppStrings.password,
              prefixIcon: const Icon(
                Icons.lock,
              ),
              suffixIcon: IconButton(
                onPressed: _togglePasswordVisibility,
                icon: Icon(
                  !value ? Icons.visibility : Icons.visibility_off,
                ),
              ),
            );
          },
        ),
        SizedBox(
          height: 20.h,
        ),
        ValueListenableBuilder(
          valueListenable: confirmVisibility,
          builder: (context, value, _) {
            return CustomUnderlineTextField(
              controller: confirmController,
              validator: _confirmValidator,
              obscureText: !value,
              labelText: AppStrings.confirmPassword,
              prefixIcon: const Icon(
                Icons.lock,
              ),
              suffixIcon: IconButton(
                onPressed: _toggleConfirmVisibility,
                icon: Icon(
                  !value ? Icons.visibility : Icons.visibility_off,
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  void _pickBirthday(BuildContext context) async {
    DateFormat format = DateFormat.yMd();
    final DateTime? date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );

    if (date == null) return;

    birthDayController.text = format.format(date);
  }

  void _togglePasswordVisibility() {
    passwordVisibility.value = !passwordVisibility.value;
  }

  void _toggleConfirmVisibility() {
    confirmVisibility.value = !confirmVisibility.value;
  }

  String? _nameValidator(String? value) {
    if (value == null || value.trim().isEmpty) {
      return AppStrings.fieldRequiredError;
    }
    if (value.trim().length < 3) return AppStrings.nameLengthError;
    return null;
  }

  String? _emailValidator(String? value) {
    if (value == null || value.trim().isEmpty) {
      return AppStrings.fieldRequiredError;
    }
    return null;
  }

  String? _dateValidator(String? value) {
    if (value == null || value.trim().isEmpty) {
      return AppStrings.fieldRequiredError;
    }

    return null;
  }

  String? _passwordValidator(String? value) {
    if (value == null || value.trim().isEmpty) {
      return AppStrings.fieldRequiredError;
    }
    if (value.trim().length < 8) return AppStrings.passwordLengthError;
    return null;
  }

  String? _confirmValidator(String? value) {
    if (value == null || value.trim().isEmpty) {
      return AppStrings.fieldRequiredError;
    }
    if (value.trim() != passwordController.text.trim()) {
      return AppStrings.passwordsNotMatchError;
    }
    return null;
  }
}
