import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ui_23_protein_app/presentation/detail_screen.dart';

import '../data/protrein_data.dart';

class AnimatedSliderWidget extends StatefulWidget {
  const AnimatedSliderWidget({super.key});

  @override
  State<AnimatedSliderWidget> createState() => _AnimatedSliderWidgetState();
}

class _AnimatedSliderWidgetState extends State<AnimatedSliderWidget>
    with TickerProviderStateMixin {
  //// ***  _pageController for handling Page View ***////
  PageController _pageController = PageController();
  //// ***  _tiltController for handling Tilt Animation ***////
  late AnimationController _tiltController;
  //// ***  _tiltAnimation for handling Tilt Animation ***////
  late Animation _tiltAnimation;
  //// *** _maxTilt hold the value how much we want to tilt ***////
  double _maxTilt = pi / 6;
  //// *** _directionMultiplyer used for direction where tilt  ***////
  double _directionMultiplyer = 0.8;
  //// *** selectedIndex is for category List   ***////
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    //// *** _pageController will listen to changes and set new state ***/////
    _pageController.addListener(() {
      setState(() {}); //
    });
    //// *** Here we are initializing the _tiltController controller  ***/////
    _tiltController = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 100),
        reverseDuration: const Duration(milliseconds: 1200))
      //// *** and adding a addStatusListener to perform reverse tilt animation   ***/////
      ..addStatusListener((status) {
        if (_tiltController.isCompleted) {
          _tiltController.reverse();
        }
      });
    //// *** Here we are initializing the _tiltAnimation with CurvedAnimation  ***/////
    _tiltAnimation = CurvedAnimation(
        parent: _tiltController,
        curve: Curves.easeOut,
        reverseCurve: Curves.elasticOut.flipped);
  }

  @override
  void dispose() {
    //// *** Disposing all controller to prevent memory leak ***/////
    _pageController.dispose();
    _tiltController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //// *** Here we are using column because we are also implementing the indicator *** ///
    return Column(
      children: [
        Expanded(
          //// *** We are using tilt animation for entire page view builder for that jiggle effect *** ///
          child: AnimatedBuilder(
            animation: _tiltAnimation,
            builder: (context, tilt) {
              return Transform(
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.001)
                    ..rotateY(
                        _tiltAnimation.value * _maxTilt * _directionMultiplyer),
                  alignment: const FractionalOffset(0.5, 1.0),
                  child: tilt);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: PageView.builder(
                onPageChanged: (val) {
                  _tiltController.forward();
                  selectedIndex = val;
                },
                controller: _pageController,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  // Calculate the tilt effect based on the scroll position
                  double tilt = 0.0;
                  if (_pageController.position.haveDimensions) {
                    tilt = (_pageController.page! - index);
                  }
///// **** Here we are Using transform to rotate our container a little *** ///////
                  return Transform(
                    transform: Matrix4.identity()
                      ..setEntry(3, 2, 0.002) // Perspective
                      ..rotateY(-tilt *
                          pi /
                          2), // Adjust rotation angle for tilt effect
                    alignment: Alignment.center,
                    //// **** Here we are Using Stack add Circle button over our container  *** ///////
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Column(
                          children: [
                            Expanded(
                              child: Container(
                                margin: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: const Color(0xffb5333d),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                alignment: Alignment.center,
                                ///// **** Here we are Using transform to rotate our Column a little *** ///////
                                child: AnimatedBuilder(
                                    animation: _tiltAnimation,
                                    builder: (context, tilt) {
                                      return Transform(
                                          transform: Matrix4.identity()
                                            ..setEntry(3, 2, 0.001)
                                            ..rotateY(-(_tiltAnimation.value *
                                                _maxTilt *
                                                _directionMultiplyer)),
                                          alignment:
                                              const FractionalOffset(0.5, 1.0),
                                          child: tilt);
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "PROTEIN",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.normal),
                                          ),
                                          Text(
                                            items[index].title,
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 30),
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Hero(
                                              tag: "$index",
                                              child: Image.asset(
                                                  items[index].image)),
                                        ],
                                      ),
                                    )),
                              ),
                            ),
                            const SizedBox(
                              height: 35,
                            )
                          ],
                        ),
                        Positioned(
                            bottom: 0,
                            child: AnimatedBuilder(
                              animation: _tiltAnimation,
                              builder: (context, tilt) {
                                return Transform(
                                    transform: Matrix4.identity()
                                      ..setEntry(3, 2, 0.001)
                                      ..rotateY((_tiltAnimation.value *
                                          _maxTilt *
                                          _directionMultiplyer)),
                                    alignment: const FractionalOffset(2, 2),
                                    child: tilt);
                              },
                              child: CircleAvatar(
                                radius: 55,
                                backgroundColor: Colors.white,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => DetailScreen(
                                                data: items[index],
                                                index: index)));
                                  },
                                  child: const CircleAvatar(
                                    radius: 40,
                                    backgroundColor: Colors.black,
                                    child: Icon(
                                      Icons.arrow_downward,
                                      color: Colors.white,
                                      size: 33,
                                    ),
                                  ),
                                ),
                              ),
                            ))
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < items.length; i++) ...[
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: CircleAvatar(
                    radius: selectedIndex == i ? 8 : 3,
                    backgroundColor: selectedIndex == i
                        ? Colors.black
                        : Colors.grey.shade400,
                  ),
                )
              ]
            ],
          ),
        ),
      ],
    );
  }
}
