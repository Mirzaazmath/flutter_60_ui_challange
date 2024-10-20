import 'package:flutter/material.dart';
import 'package:ui_20_inter_change_login/presentation/login_screen.dart';

import '../widgets/animated_circle_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  //// **** AnimationController for Logo Bounce Effect ****///////
  late AnimationController _controller;
  //// **** Animation for Logo Bounce Effect ****///////
  late Animation<double> _animation;
  //// **** Bool Value to Start Circle Animation ****///////
  bool startAnimation = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //// **** Calling startAnimationFunction ****///////
    startAnimationFunction();
    //// **** Calling splashScreenFunctionality ****///////
    splashScreenFunctionality();
  }

//// **** startAnimationFunction Delay some time and Set value to true to Start Animation effect for Circle ****///////
  startAnimationFunction() {
    Future.delayed(const Duration(milliseconds: 2500), () {
      setState(() {
        startAnimation = !startAnimation;
      });
    });
  }

  //// **** splashScreenFunctionality initializing the_ controller and animation wit duration and perform Splash screen effect ****///////
  splashScreenFunctionality() {
    //// **** Setting AnimationController ****///////
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    //// **** Setting CurvedAnimation ****///////
    _animation = CurvedAnimation(parent: _controller, curve: Curves.bounceIn);
    //// **** Starting  Animation ****///////
    _controller.forward();
    //// **** Splash  Screen Duration ****///////
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const LoginScreen()));
    });
  }

  @override
  //// **** Dispose of Controller to prevent memory Leak ****///////
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //// **** Using Hero Widget for Smooth Page Transition ****///////
      body: Hero(
        tag: "Login",
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          child: Stack(
            children: [
              ////// ***** Animated Circle Widget ***** ////////
              for (int i = 1; i <= 6; i++) ...[
                AnimatedCircleWidget(
                  startAnimation: startAnimation,
                  height: (i <= 3
                          ? MediaQuery.of(context).size.height * 0.4
                          : MediaQuery.of(context).size.height * 0.4) *
                      _controller.value,
                  duration: (i + 2) * 150,
                  isTopCircle: i <= 3,
                  isRightCircle: i == 1 || i == 6,
                  isCenterCircle: i == 2 || i == 5,
                  disableOpacity: true,
                ),
              ],
              SizedBox(
                height: double.infinity,
                width: double.infinity,
                //// **** Using  ScaleTransition for Logo and Welcome text ****///////
                child: Center(
                  child: ScaleTransition(
                    scale: _animation,
                    child: SizedBox(
                        height: 100,
                        width: 300,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 50,
                              width: 50,
                              child: FlutterLogo(
                                style: FlutterLogoStyle.markOnly,
                              ),
                            ),
                            Text(
                              "Welcome",
                              style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  color: _controller.isCompleted
                                      ? Colors.white
                                      : Colors.black),
                            )
                          ],
                        )),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
