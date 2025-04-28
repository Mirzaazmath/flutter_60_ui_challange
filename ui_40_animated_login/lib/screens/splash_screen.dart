import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'package:ui_40_animated_login/screens/login_screen.dart';
import 'package:ui_40_animated_login/utils/animation_utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late SpringSimulation simulation;
  bool startAnimation = false;
  bool startSlide = false;
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        startAnimation = true;
      });
    });
    super.initState();
  }

  @override
  void didChangeDependencies() {
    simulation = SpringSimulation(
      SpringDescription(mass: 1, stiffness: 100, damping: 3),
      0.0, // Starting point
      MediaQuery.sizeOf(context).height-300 , //  EndingPoint
      5, // Velocity
    );
    animationController =
        AnimationController(
            vsync: this,
            upperBound: MediaQuery.sizeOf(context).height,
          )
          ..addListener(() {
            setState(() {});
          })
          ..addStatusListener((status) {
            print(status);
          });
    animationController.animateWith(simulation);

    super.didChangeDependencies();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: animationController.value,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Hero(
                  tag: "Hero",
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 600),
                    height: startAnimation ? 250 : 50,
                    width: startAnimation ? 250 : 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        startAnimation ? 50 : 100,
                      ),
                      border: Border.all(),
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                startAnimation
                    ? AnimatedPositioned(
                      duration: Duration(milliseconds: 500),
                      right: startSlide ? -200 : (250 - 170) / 2,
                      child: ShowUpAnimation(
                        delay: 900,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              startSlide = true;
                              Future.delayed(const Duration(milliseconds: 600), () {
                               Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                              });
                            });
                          },
                          child: Container(
                            height: 50,
                            width: 170,
                            decoration: BoxDecoration(
                              color: Colors.cyan,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black38,
                                  blurRadius: 10,
                                  offset: Offset(5, 5),
                                ),
                              ],
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "Welcome",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                    : SizedBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
