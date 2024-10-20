import 'package:flutter/material.dart';
import '../widgets/animated_circle_widget.dart';
import '../widgets/login_form_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //// **** Bool Value to Start Circle Animation ****///////
  bool startAnimation = false;
  @override
  void initState() {

    // TODO: implement initState
    super.initState();
    startAnimationFunction();
  }
//// **** startAnimationFunction Delay some time and Set value to true to Start Animation effect for Circle ****///////
  startAnimationFunction() {
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        startAnimation = !startAnimation;
      });
    });
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
                  duration: (i + 2) * 100,
                  isTopCircle: i <= 3,
                  isRightCircle: i == 1 || i == 6,
                  isCenterCircle: i == 2 || i == 5,
                ),
              ],

              ////// ***** Login Form Widget ***** ////////
              const LoginFormWidget()
            ],
          ),
        ),
      ),
    );
  }
}
