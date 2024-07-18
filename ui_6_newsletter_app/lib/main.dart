import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_6_newsletter_app/presentation/home_screen.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor:const  Color(0xfff2f5fa),
        primaryColorDark: const Color(0xff2758cf),
        primaryColorLight:const  Color(0xff3768df),
        primaryColor: const Color(0xffffffff),
      ),

      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
