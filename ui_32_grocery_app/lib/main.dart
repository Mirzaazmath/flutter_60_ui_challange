import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_32_grocery_app/presentation/main_navigation_screen.dart';
import 'package:ui_32_grocery_app/provider/show_detail_provider.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) =>ShowDetailProvider(),
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: const  Color(0xffffffff),
          primaryColorLight:const  Color(0xffefefef),
          primaryColorDark:const  Color(0xfff16c3d),
          scaffoldBackgroundColor:const Color(0xff19253d),
      
        ),
        home: const MainNavigationScreen(),
      
      ),
    );
  }
}
