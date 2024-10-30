import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_24_counter_app/presention/home_screen.dart';
import 'package:ui_24_counter_app/provider/counter_provider.dart';
import 'package:ui_24_counter_app/theming/app_theme.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) =>CounterProvider(),
      child: MaterialApp(
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: ThemeMode.system,
        home: const HomeScreen(),

      ),
    );
  }
}
