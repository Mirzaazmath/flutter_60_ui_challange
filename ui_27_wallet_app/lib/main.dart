import 'package:flutter/material.dart';
import 'package:ui_27_wallet_app/home_screen.dart';
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
        primaryColor: const Color(0xffc4e4e3),
        primaryColorDark: const Color(0xff0f0f0f),
        primaryColorLight:  const Color(0xffffdfb9),
        scaffoldBackgroundColor: const Color(0xfff2f2f2),
        appBarTheme:const  AppBarTheme(
          backgroundColor: const Color(0xfff2f2f2),
          surfaceTintColor: Colors.transparent
        )
      ),
      home:const  HomeScreen(

      ),
    );
  }
}
