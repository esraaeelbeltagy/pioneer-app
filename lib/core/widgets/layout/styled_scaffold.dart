import 'package:flutter/material.dart';
import 'package:pioneer_app/core/extensions/size_extension.dart';
import 'package:pioneer_app/core/extensions/theme_extension.dart';
import 'package:pioneer_app/core/utils/app_colors.dart';

class StyledScaffold extends StatelessWidget {
  final AppBar? appBar;
  final Widget? body, bottomNavigationBar;
  const StyledScaffold({
    super.key,
    this.body,
    this.appBar,
    this.bottomNavigationBar,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color : context.theme.scaffoldBackgroundColor,
      child: Stack(
        children: [
          CustomPaint(
            size: Size(
                context.width,
                (context.width * 1.0433526011560694)
                    .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
            painter: _UpperCornerCustomPainter(context: context),
          ),
          CustomPaint(
            size: Size(
                context.width,
                (context.width * 2.5074626865671643)
                    .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
            painter: _LowerCornerCustomPainter(),
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

class _UpperCornerCustomPainter extends CustomPainter {
  final BuildContext context;

  const _UpperCornerCustomPainter({required this.context});

  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    path.moveTo(size.width * 0.8556503, size.height * -0.4245596);
    path.cubicTo(
      size.width * 0.2327497,
      size.height * -0.1813670,
      size.width * 0.7776040,
      size.height * 0.1163501,
      size.width * 0.3314017,
      size.height * 0.1536313,
    );
    path.cubicTo(
      size.width * -0.01061743,
      size.height * 0.1822078,
      size.width * -0.01718621,
      size.height * 0.6902964,
      size.width * -0.001608145,
      size.height * 0.9260028,
    );
    path.cubicTo(
      size.width * 0.001922853,
      size.height * 0.9794294,
      size.width * -0.04671879,
      size.height * 1.015399,
      size.width * -0.09318757,
      size.height * 0.9916731,
    );
    path.lineTo(size.width * -0.6064104, size.height * 0.7296399);
    path.cubicTo(
      size.width * -0.6402225,
      size.height * 0.7123767,
      size.width * -0.6579277,
      size.height * 0.6701080,
      size.width * -0.6459624,
      size.height * 0.6352271,
    );
    path.lineTo(size.width * -0.1618818, size.height * -0.7756870);
    path.cubicTo(
      size.width * -0.1529697,
      size.height * -0.8016648,
      size.width * -0.1300223,
      size.height * -0.8171496,
      size.width * -0.1033194,
      size.height * -0.8143934,
    );
    path.cubicTo(
      size.width * 0.1519038,
      size.height * -0.7880443,
      size.width * 1.417069,
      size.height * -0.6437479,
      size.width * 0.8556503,
      size.height * -0.4245596,
    );
    path.close();

    Paint paintFill = Paint()..style = PaintingStyle.fill;

    paintFill.color = context.theme.primaryColor.withOpacity(1.0);
    canvas.drawPath(path, paintFill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class _LowerCornerCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    path.moveTo(size.width * 0.2618622, size.height * 0.9700218);
    path.cubicTo(
      size.width * 1.363881,
      size.height * 0.8284226,
      size.width * 0.4687552,
      size.height * 0.5876984,
      size.width * 1.239706,
      size.height * 0.5840655,
    );
    path.cubicTo(
      size.width * 1.830647,
      size.height * 0.5812798,
      size.width * 1.910423,
      size.height * 0.2187163,
      size.width * 1.915463,
      size.height * 0.04956131,
    );
    path.cubicTo(
      size.width * 1.916602,
      size.height * 0.01121942,
      size.width * 2.004945,
      size.height * -0.01196468,
      size.width * 2.081512,
      size.height * 0.007375833,
    );
    path.lineTo(size.width * 2.927154, size.height * 0.2209802);
    path.cubicTo(
      size.width * 2.982861,
      size.height * 0.2350536,
      size.width * 3.007557,
      size.height * 0.2661567,
      size.width * 2.982313,
      size.height * 0.2904524,
    );
    path.lineTo(size.width * 1.961154, size.height * 1.273252);
    path.cubicTo(
      size.width * 1.942353,
      size.height * 1.291345,
      size.width * 1.900876,
      size.height * 1.301224,
      size.width * 1.855413,
      size.height * 1.297879,
    );
    path.cubicTo(
      size.width * 1.420866,
      size.height * 1.265907,
      size.width * -0.7313831,
      size.height * 1.097645,
      size.width * 0.2618622,
      size.height * 0.9700218,
    );
    path.close();

    Paint paintFill = Paint()..style = PaintingStyle.fill;
    paintFill.color = AppColors.secondaryColor.withOpacity(1.0);
    canvas.drawPath(path, paintFill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
