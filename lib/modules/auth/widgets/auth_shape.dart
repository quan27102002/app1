import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'dart:ui' as ui;


class AuthShape extends StatelessWidget {
  const AuthShape({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomPaint(
        size: Size(200, 200),
        painter: RPSCustomPainter(),
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width, 0);
    path_0.lineTo(0, 0);
    path_0.lineTo(0, size.height);
    path_0.cubicTo(
        size.width * 0.07994128,
        size.height * 0.8144598,
        size.width * 0.1332505,
        size.height * 0.8127723,
        size.width * 0.2685513,
        size.height * 0.8019330);
    path_0.lineTo(size.width * 0.7738513, size.height * 0.8019330);
    path_0.cubicTo(
        size.width * 0.9225077,
        size.height * 0.8012991,
        size.width * 0.9615359,
        size.height * 0.7473750,
        size.width,
        size.height * 0.6135268);
    path_0.lineTo(size.width, 0);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.shader = ui.Gradient.linear(
        Offset(size.width * 0.5000000, size.height * 5.024062e-7),
        Offset(size.width * 0.5000000, size.height * 1.371982),
        [Color(0xffF9ABAE).withOpacity(1), Color(0xffD9D9D9).withOpacity(0)],
        [0, 1]);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
