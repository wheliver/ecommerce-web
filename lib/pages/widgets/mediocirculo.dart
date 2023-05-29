import 'dart:math' as math;

import 'package:flutter/material.dart';

class MyArc extends StatelessWidget {
  final double diameter;
  final Widget childd;

  const MyArc({super.key, this.diameter = 200, required this.childd});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: MyPainter(),
      size: Size(diameter, diameter),
      child: Container(
        child: ClipRRect(
          child: childd,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(diameter),
            bottomRight: Radius.circular(diameter),
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(diameter),
            bottomRight: Radius.circular(diameter),
          ),
        ),
      ),
    );
  }
}

// This is the Painter class
class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Colors.transparent;
    canvas.drawArc(
      Rect.fromCenter(
        center: Offset(size.height / 3, size.width / 2),
        height: size.height,
        width: size.width,
      ),
      math.pi,
      math.pi * 2,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
