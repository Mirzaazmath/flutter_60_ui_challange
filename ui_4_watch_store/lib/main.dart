import 'package:flutter/material.dart';

import 'home_screen.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.black,
        indicatorColor: const Color(0xffdf9c08),
        primaryColorLight:Colors.grey.shade200,
        primaryColorDark: Colors.grey.shade400,
        appBarTheme:const  AppBarTheme(
          backgroundColor: Colors.white
        )
      ),

      home: const HomeScreen(),
    );
  }
}
