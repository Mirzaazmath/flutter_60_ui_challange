import 'package:flutter/material.dart';
import 'package:ui_26_file_manager/presentation/home_screen.dart';
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
        scaffoldBackgroundColor:const  Color(0xff121212),
        primaryColor:const  Color(0xff1c1c1c)
      ),
      home:const  HomeScreen(),
    );
  }
}
