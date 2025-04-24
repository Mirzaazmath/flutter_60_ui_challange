import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Watch App',
      theme: ThemeData(
        primaryColor: Color(0xffFBCF84),
        primaryColorDark: Color(0xffDDB26A),
        primaryColorLight: Color(0xffECFAFF),
        scaffoldBackgroundColor: Color(0xff1E355F),
        iconTheme: IconThemeData(color: Color(0xffECFAFF)),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xff1E355F),
          elevation: 0,
          iconTheme: IconThemeData(color: Color(0xffECFAFF)),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
