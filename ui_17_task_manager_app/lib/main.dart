import 'package:flutter/material.dart';
import 'package:ui_17_task_manager_app/presentation/home_screen.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        primaryColor: const Color(0xffe48b71),
        primaryColorLight:const Color(0xff262626),
      ),
      home: const  HomeScreen(),
    );
  }
}
