import 'dart:math';

import 'package:flutter/material.dart';

class ArcPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.grey
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;
    final endPointPaint = Paint()
      ..color =const  Color(0xff9d6ff6)
      ..strokeWidth = 4
      ..style = PaintingStyle.stroke;
    // Start angle and sweep angle for the arc
    // Start angle in radians
    const startAngle = -pi/1.17;

    // Sweep angle (how much of the arc you want, in radians)
     const sweepAngle =  pi/1.4;



    // Parameters for the dotted line effect
    const int totalDots = 40; // Number of dots
    const double dotAngle = sweepAngle / totalDots; // Angle between each dot
    const  double dotRadius = 0.5; // Radius of each dot

    for (int i = 0; i < totalDots; i++) {
      // Calculate the angle for the current dot
      final currentAngle = startAngle + (i * dotAngle);

      // Calculate the position of the dot on the arc
      final double x = size.width / 2 + 100 * cos(currentAngle);
      final double y = size.height / 2 + 100 * sin(currentAngle);

      // Draw the dot
      canvas.drawCircle(Offset(x, y),i==0||i==39 ?5: dotRadius ,i==0||i==39 ?endPointPaint: paint);
    }
  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}