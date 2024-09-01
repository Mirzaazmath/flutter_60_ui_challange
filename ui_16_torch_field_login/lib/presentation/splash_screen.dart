import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ui_16_torch_field_login/presentation/login_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Navigating to Login Screen after 3 Seconds
    Timer(const Duration(seconds: 1),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Hero(
          tag: "Logo",
          child: Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const  FlutterLogo(
                size: 45,
              ),
              const  SizedBox(width: 10,),
              Text("LOGIN",style: Theme.of(context).textTheme.headlineLarge?.copyWith(color:Theme.of(context).primaryColor,fontWeight: FontWeight.bold ),),
              const  SizedBox(width: 40,),
            ],
          ),
        )
      ),
    );
  }
}
