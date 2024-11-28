import 'package:flutter/material.dart';
import 'package:ui_30_task_flow/screens/home_screen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor:const  Color(0xff1f1f1f),
        primaryColor: const Color(0xffffdf6e),
        primaryColorLight: const  Color(0xff5ac496),
        primaryColorDark: const  Color(0xffde4801),
      ),
      home:const  HomeScreen(),
    );
  }
}
