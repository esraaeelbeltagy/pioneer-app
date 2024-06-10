import 'package:flutter/material.dart';
import 'package:pioneer_app/core/utils/images.dart';

class LogoWidget extends StatelessWidget {
  final double? width, height;
  const LogoWidget({
    super.key,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppImages.logo,
      width: width,
      height: height,
    );
  }
}
