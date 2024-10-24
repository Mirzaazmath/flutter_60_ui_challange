import 'dart:math';
import 'package:flutter/material.dart';

class FlipSwitchWidget extends StatefulWidget {
  final Color color;
  final Color backgroundColor;
  final String leftLabel;
  final String rightLabel;
  final Function()? onUpdate;

  FlipSwitchWidget({
    super.key,
    required this.color,
    required this.backgroundColor,
    required this.leftLabel,
    required this.rightLabel,
    this.onUpdate,
  });

  @override
  State<FlipSwitchWidget> createState() => _FlipSwitchWidgetState();
}

class _FlipSwitchWidgetState extends State<FlipSwitchWidget>
    with TickerProviderStateMixin {
  late AnimationController _flipController;
  late AnimationController _tiltController;
  late Animation _tiltAnimation;
  double _maxTilt = pi / 6;
  double _directionMultiplyer = 1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _flipController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    _tiltController = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 200),
        reverseDuration: const Duration(milliseconds: 1500))
      ..addStatusListener((status) {
        if (_tiltController.isCompleted) {
          _tiltController.reverse();
        }
      });
    _tiltAnimation = CurvedAnimation(
        parent: _tiltController,
        curve: Curves.easeOut,
        reverseCurve: Curves.elasticOut.flipped);
    _jumpToMode(true);
  }

  void _jumpToMode(bool isLeftEnable) {
    _flipController.value = isLeftEnable ? 1.0 : 0.0;
  }

  void _flipSwitch() {
    if (_flipController.isCompleted) {
      _directionMultiplyer = -1;
      _tiltController.forward();
      _flipController.reverse();
    } else {
      _directionMultiplyer = 1;
      _tiltController.forward();
      _flipController.forward();
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _flipController.dispose();
    _tiltController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _tiltAnimation,
      builder: (context, tilt) {

        return Transform(
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.001)
            ..rotateY(_tiltAnimation.value * _maxTilt * _directionMultiplyer),
          alignment: const FractionalOffset(0.5, 1.0),
          child: tilt
        );
      },
      child: Stack(
        children: [
          GestureDetector(
            onTap: () {
              _flipSwitch();
              widget.onUpdate!();
            },
            child: Container(
              height: 50,
              width: 240,
              decoration: BoxDecoration(
                  color: widget.backgroundColor,
                  border: Border.all(color: widget.color, width: 3),
                  borderRadius: BorderRadius.circular(30)),
              child: Row(
                children: [
                  Expanded(
                      child: Center(
                        child: Text(
                          widget.leftLabel,
                          style: TextStyle(
                              color: widget.color,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      )),
                  Expanded(
                      child: Center(
                        child: Text(
                          widget.rightLabel,
                          style: TextStyle(
                              color: widget.color,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      )),
                ],
              ),
            ),
          ),
          AnimatedBuilder(
              animation: _flipController,
              builder: (context, child) {
                return flipWidget(pi * _flipController.value);
              }),
        ],
      ),
    );
  }

  flipWidget(angle) {
    final bool isLeft = angle > (pi / 2);
    var transformAngle = isLeft ? angle - pi : angle;
    return Positioned(
      bottom: 0,
      top: 0,
      right: isLeft ? null : 0,
      left: isLeft ? 0 : null,
      child: Transform(
        alignment: isLeft
            ? const FractionalOffset(1.0, 0.5)
            : const FractionalOffset(0, 0.5),
        transform: Matrix4.identity()
          ..setEntry(3, 2, 0.002)
          ..rotateY(transformAngle),
        child: Container(
          height: 50,
          width: 120,
          decoration: BoxDecoration(
              color: widget.color,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(isLeft ? 0 : 32),
                bottomRight: Radius.circular(isLeft ? 0 : 32),
                topLeft: Radius.circular(isLeft ? 32 : 0),
                bottomLeft: Radius.circular(isLeft ? 32 : 0),
              )),
          child: Center(
              child: Text(
            isLeft ? widget.leftLabel : widget.rightLabel,
            style: TextStyle(
                color: widget.backgroundColor,
                fontWeight: FontWeight.bold,
                fontSize: 16),
          )),
        ),
      ),
    );
  }
}
