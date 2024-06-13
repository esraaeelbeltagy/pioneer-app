import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pioneer_app/core/extensions/theme_extension.dart';
import 'package:pioneer_app/core/utils/app_colors.dart';

class ProfileScaffold extends StatelessWidget {
  final AppBar? appBar;
  final Widget? body, bottomNavigationBar;
  const ProfileScaffold({
    super.key,
    this.appBar,
    this.body,
    this.bottomNavigationBar,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.theme.scaffoldBackgroundColor,
      child: Stack(
        children: [
          //!Red
          Positioned(
            right: -28.r,
            child: CustomPaint(
              size: Size(361.w, 382.h),
              painter: _RedRectangleCustomPainter(),
            ),
          ),
          //?Blue
          CustomPaint(
            size: Size(402.w, 382.h),
            painter: _BlueRectangleCustomPainter(),
          ),
          //Grey
          Positioned(
            right: 0.r,
            child: CustomPaint(
              size: Size(79.w, 380.h),
              painter: _GreyRectangleCustomPainter(),
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: appBar,
            body: body,
            bottomNavigationBar: bottomNavigationBar,
          ),
        ],
      ),
    );
  }
}

//?Blue
class _BlueRectangleCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    path.moveTo(394.5, -38.9999);
    path.cubicTo(323.135, 48.2266, 198.502, 163.149, 141, 204.5);
    path.cubicTo(104.55, 230.712, 159.571, 303.303, 204.744, 352.94);
    path.cubicTo(220.108, 369.823, 206.854, 398.788, 184.099, 396.924);
    path.lineTo(-51.6621, 377.616);
    path.cubicTo(-65.5982, 376.475, -75.6059, 363.708, -73.3879, 349.901);
    path.lineTo(-20.0145, 17.6461);
    path.cubicTo(-18.5105, 8.28419, -11.8871, 0.751618, -2.70424, -1.61211);
    path.cubicTo(78.016, -22.3899, 458.358, -117.051, 394.5, -38.9999);
    path.close();

    Paint paint = Paint()..style = PaintingStyle.fill;
    paint.color = AppColors.primaryColor;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

//!Red
class _RedRectangleCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    path.moveTo(249.046, -37.249);
    path.cubicTo(256.744, -28.8377, 257.711, -18.4107, 253.727, -6.63649);
    path.cubicTo(249.751, 5.11315, 240.829, 18.266, 228.655, 32.2692);
    path.cubicTo(204.3, 60.2824, 166.781, 91.8613, 129.213, 122.641);
    path.cubicTo(124.229, 126.725, 119.243, 130.795, 114.288, 134.841);
    path.cubicTo(81.8727, 161.303, 50.7236, 186.732, 29.3416, 208.315);
    path.cubicTo(17.0101, 220.762, 7.97531, 231.883, 3.80537, 241.15);
    path.cubicTo(1.72213, 245.779, 0.874175, 249.9, 1.39559, 253.47);
    path.cubicTo(1.91409, 257.019, 3.79483, 260.079, 7.29179, 262.594);
    path.cubicTo(52.5926, 295.171, 102.206, 350.61, 121.283, 372.743);
    path.cubicTo(126.314, 378.581, 133.794, 381.725, 141.465, 381.097);
    path.lineTo(434.257, 357.118);
    path.cubicTo(447.903, 356, 457.702, 343.499, 455.53, 329.98);
    path.lineTo(401.838, -4.25726);
    path.cubicTo(400.529, -12.4073, 395.112, -19.2413, 387.415, -22.1963);
    path.cubicTo(365.081, -30.7699, 317.554, -48.3351, 282.031, -56.7526);
    path.cubicTo(273.152, -58.8566, 265.036, -60.3859, 258.259, -61.0618);
    path.cubicTo(251.461, -61.7398, 246.081, -61.5508, 242.631, -60.277);
    path.cubicTo(240.915, -59.6439, 239.723, -58.7597, 239.047, -57.6263);
    path.cubicTo(238.375, -56.4993, 238.17, -55.0531, 238.572, -53.2035);
    path.cubicTo(239.385, -49.4659, 242.639, -44.2498, 249.046, -37.249);
    path.close();

    Paint paintStroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paintStroke.color = const Color(0xff292D32).withOpacity(1.0);
    canvas.drawPath(path, paintStroke);

    Paint paint = Paint()..style = PaintingStyle.fill;
    paint.color = AppColors.secondaryColor;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

//Grey
class _GreyRectangleCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    path.moveTo(44.5001, -49.9999);
    path.cubicTo(80.3857, -13.9756, 21.0783, 218.289, 1.16277, 291.757);
    path.cubicTo(-2.21745, 304.226, 5.019, 317.192, 17.152, 321.641);
    path.cubicTo(22.731, 323.686, 27.7783, 325.648, 32.3245, 327.53);
    path.cubicTo(58.7129, 338.45, 86.7598, 389.472, 112.635, 377.408);
    path.cubicTo(124.799, 371.737, 134.401, 363.726, 140.077, 352.707);
    path.cubicTo(171.817, 291.091, 170.962, 138.128, 170.217, 99.8114);
    path.cubicTo(170.106, 94.0956, 167.967, 88.7781, 164.11, 84.5564);
    path.cubicTo(134.696, 52.3597, 6.597, -88.0494, 44.5001, -49.9999);
    path.close();

    Paint paint = Paint()..style = PaintingStyle.fill;
    paint.color = const Color(0xff666666).withOpacity(1.0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
