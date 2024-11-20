import 'package:flutter/material.dart';
import 'package:ui_29_food_delivery_app/screens/cart_screen.dart';
import 'package:ui_29_food_delivery_app/screens/home_screen.dart';
import 'package:ui_29_food_delivery_app/screens/wallet_screen.dart';
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
        scaffoldBackgroundColor:  const Color(0xfff4f4f4),
        primaryColor: const Color(0xffeb3556),
        primaryColorLight:const  Color(0xffffdde3),
        primaryColorDark: const Color(0xffffffff),
      ),
      home: const HomeScreen(),

    );
  }
}
