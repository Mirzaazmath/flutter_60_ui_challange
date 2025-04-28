import 'package:flutter/material.dart';
import 'package:ui_40_animated_login/screens/login_screen.dart';
import 'package:ui_40_animated_login/screens/splash_screen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.cyan
      ),
      home: SplashScreen(),

    );
  }
}
