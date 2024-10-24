import 'package:flutter/material.dart';
import 'package:ui_21_flight_booking_ui/presentation/home_screen.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor:const  Color(0xffe8e8e8),
        primaryColor:const  Color(0xff262630),
        primaryColorLight:const Color(0xffffffff),
        primaryColorDark:const  Color(0xff9d6ff6),

      ),
    debugShowCheckedModeBanner: false,
      home:const  HomeScreen(),
    );
  }
}
