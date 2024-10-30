import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_24_counter_app/provider/counter_provider.dart';
import 'package:ui_24_counter_app/widgets/plasma_background.dart';

import '../widgets/animated_circle.dart';
import '../widgets/counter_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.center,
      children: [
        //// **** Background Plasma Effect **** /////
        const PlasmaBackground(),
        //// **** Animated Slider Counter Widget **** /////
        const Positioned(bottom: 100, child: CounterSlider()),
        //// **** Animated Circle with Counter Text **** /////
        Positioned(
            top: 100,
            child: Stack(
              alignment: Alignment.center,
              children: [
                const AnimatedCircles(),
                Consumer<CounterProvider>(builder: (context, provider, child) {
                  return Text(
                    provider.count.toString(),
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 90),
                  );
                })
              ],
            ))
      ],
    ));
  }
}
