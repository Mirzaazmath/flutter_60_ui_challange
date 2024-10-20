import 'package:flutter/material.dart';
import 'package:ui_20_inter_change_login/presentation/splash_screen.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor:const  Color(0xffe090ad),
        primaryColorDark: const Color(0xff039f9b),
        scaffoldBackgroundColor: const  Color(0xffEDE9FE),

      ),
      home:const  SplashScreen(),
    );
  }
}
