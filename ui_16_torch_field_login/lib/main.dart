import "package:flutter/material.dart";
import "package:ui_16_torch_field_login/presentation/splash_screen.dart";

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor:const  Color(0xff151f2c),
        primaryColor: Colors.white,
        primaryColorDark: Colors.black,
      ),
      home: const SplashScreen(),
    );
  }
}
