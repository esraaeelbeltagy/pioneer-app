import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pioneer_app/core/utils/hero_tags.dart';
import 'package:pioneer_app/core/widgets/visuals/logo_widget.dart';

class LoginLogo extends StatelessWidget {
  const LoginLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: HeroTags.logo,
      child: LogoWidget(
        width: 50.w,
        height: 50.h,
      ),
    );
  }
}
