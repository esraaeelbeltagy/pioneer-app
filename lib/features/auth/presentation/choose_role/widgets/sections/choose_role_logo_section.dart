import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pioneer_app/core/utils/hero_tags.dart';
import 'package:pioneer_app/core/widgets/visuals/logo_widget.dart';

class ChooseRoleLogoSection extends StatelessWidget {
  const ChooseRoleLogoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: HeroTags.logo,
      child: LogoWidget(
        width: 200.w,
        height: 200.h,
      ),
    );
  }
}
