import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pioneer_app/core/utils/app_colors.dart';

class FreeConsultationBadge extends StatelessWidget {
  const FreeConsultationBadge({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).textTheme;

    return ClipPath(
      clipper: BadgeClipper(),
      child: Container(
        width: 115.w,
        height: 72.h,
        color: AppColors.primaryColor,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'free',
                      style: theme.displaySmall,
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Icon(Icons.people, color: Colors.white, size: 22.sp),
                  ],
                ),
                Text(
                  'consultation',
                  style: theme.displaySmall,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BadgeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    const double cornerRadius = 100.0;

    path.moveTo(0, 0);
    path.lineTo(size.width - cornerRadius, 0);
    path.quadraticBezierTo(size.width, 0, size.width, cornerRadius);
    path.lineTo(size.width, size.height);
    path.lineTo(cornerRadius, size.height);
    path.quadraticBezierTo(0, size.height, 0, size.height - cornerRadius);
    path.lineTo(0, cornerRadius);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
