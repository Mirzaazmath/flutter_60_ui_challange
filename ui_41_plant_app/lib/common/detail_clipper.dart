import 'package:flutter/material.dart';

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    // Start from bottom-left
    path.lineTo(0, size.height);
    // Line to bottom-right
    path.lineTo(size.width, size.height);
    // Line to top-right
    path.lineTo(size.width, 0);
    // Curve at the top from right to left
    path.quadraticBezierTo(
      size.width / 2, 100, // control point: 100 pixels down to make the curve
      0, 0, // end at top-left
    );
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
