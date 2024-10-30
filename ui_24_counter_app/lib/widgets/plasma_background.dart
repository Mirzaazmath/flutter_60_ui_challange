import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class PlasmaBackground extends StatelessWidget {
  const PlasmaBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        backgroundBlendMode: BlendMode.srcOver,
      ),
      child: PlasmaRenderer(
        type: PlasmaType.infinity,
        particles: 5,
        color: Colors.blueGrey.shade600,
        blur: 0.51,
        size: 0.39,
        speed: 1.5,
        offset: 0,
        blendMode: BlendMode.color,
        variation1: 0,
        variation2: 0,
        variation3: 0,
        rotation: 0,
      ),
    );
  }
}