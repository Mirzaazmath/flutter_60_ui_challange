import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
        child: Text("Let Do This In Flutter",style: TextStyle(fontSize: 50),
        textAlign: TextAlign.center,),
      ),
    );
  }
}
List<IconData>iconList=[
  Icons.select_all,
  Icons.schedule,
  Icons.group,
  Icons.arrow_right_alt
];
