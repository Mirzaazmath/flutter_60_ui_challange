import 'package:flutter/material.dart';
import 'package:ui_10_car_decor/presentation/home_screen.dart';
void main(){
  runApp(const  MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      home: HomeScreen(),
    );
  }
}
