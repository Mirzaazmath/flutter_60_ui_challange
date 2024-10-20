import 'package:flutter/material.dart';

class AnimatedCircleWidget extends StatelessWidget {
  final bool startAnimation;
  final int duration;
  final bool isTopCircle;
  final bool isRightCircle;
  final bool? disableOpacity;
  final bool isCenterCircle;
  final double? height;
  const AnimatedCircleWidget({
    super.key,
    required this.startAnimation,
    required this.duration,
    required this.isTopCircle,
    required this.isRightCircle,
    this.disableOpacity,
    required this.isCenterCircle,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    Color _color = isTopCircle
        ? Theme.of(context).primaryColorDark
        : Theme.of(context).primaryColor;
    return AnimatedPositioned(
      duration: Duration(milliseconds: duration),
      bottom: isTopCircle
          ? null
          : startAnimation
              ? -100
              : MediaQuery.of(context).size.height / 3.2,
      top: isTopCircle
          ? startAnimation
              ? -100
              : MediaQuery.of(context).size.height / 3.5
          : null,
      right:isCenterCircle?null: isRightCircle
          ? startAnimation
              ? -100
              : 0
          : null,
      left:isCenterCircle?null: isRightCircle
          ? null
          : startAnimation
              ? -100
              : 0,
      child: AnimatedContainer(

        duration: Duration(milliseconds: duration),
        height:height?? MediaQuery.of(context).size.height * 0.4,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _color.withOpacity(disableOpacity == true
                ? 1
                : startAnimation
                    ? 0.5
                    : 1)),
      ),
    );
  }
}
