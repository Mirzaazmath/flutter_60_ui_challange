import 'package:flutter/material.dart';

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    double w = size.width;
    double h = size.height;
    double r = 15;                      //<-- corner radius

    Paint blackPaint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3;

    Paint pinkPaint = Paint()
      ..color = Colors.pink
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3;
    Paint tealPaint = Paint()
      ..color = Colors.teal
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3;

    RRect fullRect = RRect.fromRectAndRadius(
      Rect.fromCenter(center: Offset(w/2, h/2), width: w, height: h),
      Radius.circular(r),
    );

    Path topRightArc = Path()
      ..moveTo(w - r, 0)
      ..arcToPoint(Offset(w, r), radius: Radius.circular(r));

    Path bottomLeftArc = Path()
      ..moveTo(r, h)
      ..arcToPoint(Offset(0, h - r), radius: Radius.circular(r));

    canvas.drawRRect(fullRect, blackPaint);
    canvas.drawPath(topRightArc, pinkPaint);
    canvas.drawPath(bottomLeftArc, tealPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}