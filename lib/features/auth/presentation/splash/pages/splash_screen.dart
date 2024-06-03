import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pioneer_app/config/routes/app_routes.dart';
import 'package:pioneer_app/core/utils/hero_tags.dart';
import 'package:pioneer_app/core/widgets/layout/styled_scaffold.dart';
import 'package:pioneer_app/core/widgets/visuals/logo_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      context.pushReplacementNamed(Routes.welcome);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StyledScaffold(
      body: Center(
        child: Hero(
          tag: HeroTags.logo,
          child: LogoWidget(
            width: 200.w,
            height: 200.h,
          ),
        ),
      ),
    );
  }
}
