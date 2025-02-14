import 'package:flutter/material.dart';

import 'home_screen.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xff171717),
        primaryColor: const Color(0xff30b14e),
        primaryColorDark: const Color(0xffe28545),
        primaryColorLight: const Color(0xff242424)
      ),
      home: const  HomeScreen(),
    );
  }
}
