import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pioneer_app/config/routes/app_routes.dart';
import 'package:pioneer_app/core/extensions/pop_message_extension.dart';
import 'package:pioneer_app/core/extensions/theme_extension.dart';
import 'package:pioneer_app/core/utils/app_strings.dart';
import 'package:pioneer_app/core/widgets/headers/transparent_app_bar.dart';
import 'package:pioneer_app/core/widgets/layout/styled_scaffold.dart';
import 'package:pioneer_app/core/widgets/visuals/app_bar_logo.dart';
import 'package:pioneer_app/features/auth/presentation/signup_new_student/bloc/signup_new_student_bloc.dart';
import 'package:pioneer_app/features/auth/presentation/signup_new_student/widgets/sections/signup_new_student_fields_section.dart';
import 'package:pioneer_app/features/auth/presentation/signup_new_student/widgets/sections/signup_new_student_footer_section.dart';

class SignUpNewStudentScreen extends StatefulWidget {
  const SignUpNewStudentScreen({super.key});

  @override
  State<SignUpNewStudentScreen> createState() => _SignUpParentScreenState();
}

class _SignUpParentScreenState extends State<SignUpNewStudentScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final ValueNotifier<bool> _passwordVisibility = ValueNotifier<bool>(false),
      _confirmVisibility = ValueNotifier<bool>(false);
  late final TextEditingController _nameController,
      _emailController,
      _birthDayController,
      _passwordController,
      _confirmController;

  @override
  void initState() {
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _birthDayController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _birthDayController.dispose();
    _passwordController.dispose();
    _confirmController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpNewStudentBloc, SignUpNewStudentState>(
      listener: (context, state) {
        if (state is SignUpNewStudentLoadingState) {
          context.showLoading();
        }

        if (state is SignUpNewStudentSuccessState) {
          context.showSuccessMessage(AppStrings.signUpSuccess);
          context.pushReplacementNamed(Routes.signIn);
        }

        if (state is SignUpNewStudentFailureState) {
          context.showErrorMessage(state.message);
        }
      },
      child: Form(
        key: _formKey,
        child: StyledScaffold(
          appBar: TransparentAppBar(
            title: const AppBarLogo(),
          ),
          body: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: 64.w,
              vertical: 8.h,
            ),
            children: [
              Text(
                AppStrings.createAnAccount,
                textAlign: TextAlign.center,
                style: context.textTheme.bodyMedium?.copyWith(
                  fontSize: 18.sp,
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              SignUpNewStudentFieldsSection(
                nameController: _nameController,
                emailController: _emailController,
                birthDayController: _birthDayController,
                passwordController: _passwordController,
                confirmController: _confirmController,
                passwordVisibility: _passwordVisibility,
                confirmVisibility: _confirmVisibility,
              ),
              SizedBox(
                height: 60.h,
              ),
              SignUpNewStudentFooterSection(
                nameController: _nameController,
                emailController: _emailController,
                birthDayController: _birthDayController,
                passwordController: _passwordController,
                confirmController: _confirmController,
                formKey: _formKey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
