import 'package:flutter/material.dart';
import 'package:ui_22_food_menu/presentation/home_screen.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffebecf1)
      ),
      home:const  HomeScreen(),
    );
  }
}
