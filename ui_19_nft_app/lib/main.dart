import 'package:flutter/material.dart';
import 'package:ui_19_nft_app/presentation/home_screen.dart';
void main (){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xff253e43)
      ),
      debugShowCheckedModeBanner: false,
      home:const  HomeScreen(),

    );
  }
}