import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.transparent
        ),
        scaffoldBackgroundColor: Colors.white,
          primaryColor: const Color(0xff3a2a97),
          primaryColorLight: const Color(0xfffffbf8),
        primaryColorDark: const Color(0xfff7f7f9)
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
