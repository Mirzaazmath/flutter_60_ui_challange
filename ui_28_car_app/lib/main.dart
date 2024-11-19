import 'package:flutter/material.dart';
import 'package:ui_28_car_app/home_screen.dart';
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
        primaryColorDark:const  Color(0xff760a08),
        primaryColorLight:const  Color(0xffba1511),
        primaryColor: const Color(0xfff72f2e)

      ),
      home: HomeScreen(),
    );
  }
}
