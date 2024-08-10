import 'package:flutter/material.dart';
import 'package:ui_11_file_manager_app/presentation/home_screen.dart';

void main(){
runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),

    );
  }
}
