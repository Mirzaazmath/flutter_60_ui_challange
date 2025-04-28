import 'package:flutter/material.dart';

import '../utils/animation_utils.dart';
import 'login_form.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isExpand=false;
  @override
  void initState() {

    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        isExpand = true;
      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
        tag: "Hero",
        child: SafeArea(
          child: Align(
            alignment: Alignment.center,
            child: AnimatedContainer(
              duration: Duration(milliseconds:500),
              margin: EdgeInsets.symmetric(horizontal: 20),
              height:isExpand? MediaQuery.sizeOf(context).height:250,
              width: isExpand? MediaQuery.sizeOf(context).width:250,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(),
                borderRadius: BorderRadius.circular(50),
              ),
              alignment: Alignment.center,
              child: ShowUpAnimation(
                  delay: 500,
                  child: LoginForm()),
            ),
          ),
        ),
      ),
    );
  }
}
