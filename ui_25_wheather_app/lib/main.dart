import 'package:flutter/material.dart';
import 'package:ui_25_wheather_app/presentation/home_screen.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xff000918),
        primaryColorLight: const Color(0xff13c3f5),
        primaryColorDark: const Color(0xff0f68f5),
        primaryColor:const  Color(0xfffdfffa)
      ),
      home: const HomeScreen(),
    );

  }
}
