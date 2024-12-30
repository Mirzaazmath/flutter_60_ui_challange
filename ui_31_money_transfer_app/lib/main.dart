import 'package:flutter/material.dart';
import 'package:ui_31_money_transfer_app/screens/home_screen.dart';

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
        scaffoldBackgroundColor: const Color(0xff1f212d),
        primaryColor:const  Color(0xffeda537),
        primaryColorDark: const  Color(0xffececf0),
        primaryColorLight:  const Color(0xff575965)
      ),
      home: const HomeScreen(),
    );
  }
}
