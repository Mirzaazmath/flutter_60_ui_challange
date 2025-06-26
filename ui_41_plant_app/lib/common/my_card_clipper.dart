import 'package:flutter/cupertino.dart';

class MyCardClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var roundnessFactor = 30.0;
    var path = Path();
    path.moveTo(0, size.height);
    path.lineTo(0, size.height - roundnessFactor);
    path.quadraticBezierTo(0, size.height, roundnessFactor, size.height);

    path.lineTo(size.width - roundnessFactor, size.height);

    path.quadraticBezierTo(
      size.width,
      size.height,
      size.width,
      size.height - roundnessFactor,
    );

    path.lineTo(size.width, size.height / 4);
    path.quadraticBezierTo(
      size.width,
      0,
      size.width - size.height / 4,
      roundnessFactor,
    );
    path.lineTo(roundnessFactor, size.height * 0.6);
    path.quadraticBezierTo(
      0,
      size.height / 2 + roundnessFactor,
      0,
      size.height / 2 + roundnessFactor * 2,
    );

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
