import 'package:flutter/material.dart';
import 'package:ui_41_plant_app/screens/splash_screen.dart';
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
        primaryColor: Color(0xff66874a),
      ),
      home: SplashScreen(),

    );
  }
}
