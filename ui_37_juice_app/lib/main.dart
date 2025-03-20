import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_37_juice_app/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xffffffff),
        primaryColor: Color(0xffed828a),
        primaryColorLight: Color(0xfffdf8f4),
      ),
      home: HomeScreen(),
    );
  }
}
