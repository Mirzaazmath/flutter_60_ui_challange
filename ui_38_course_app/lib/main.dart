import 'package:flutter/material.dart';
import 'package:ui_38_course_app/screens/drawer_screen.dart';

import 'screens/home_screen.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xffede9e0)
      ),
      home: DrawerScreen(),
    );
  }
}
