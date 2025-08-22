import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double lampValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedContainer(
          duration: Duration(milliseconds: 500),
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: getBGColor(lampValue),
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),

                ///*** Lid *** ///
                Container(
                  width: 130,
                  height: 3,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff161614),
                        Colors.grey.shade500,
                        Color(0xff161614),
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 30,
                        offset: Offset(5, 5),
                      ),
                    ],
                  ),
                ),

                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    ///*** Flame Light Shadow  *** ///
                    AnimatedContainer(
                      duration: Duration(milliseconds: 500),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: getFlameLightShadowColor(lampValue),
                            blurRadius: 100,
                            offset: Offset(10, -10),
                          ),
                        ],
                      ),
                    ),

                    ///*** Flame Light *** ///
                    AnimatedContainer(
                      duration: Duration(milliseconds: 500),
                      width: 20,
                      height: 120,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: getFlameLightColor(lampValue),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: getFlameLightInnerShadowColor(lampValue),
                            blurRadius: 30,
                            offset: Offset(0, 10),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 128,
                      height: 220,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.grey.shade500,
                            Colors.transparent,
                            Colors.grey.shade900.withValues(alpha: 0.2),
                            Colors.transparent,
                            Colors.transparent,
                            Colors.grey.shade900.withValues(alpha: 0.2),
                            Colors.transparent,
                            Colors.grey.shade500,
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                Container(
                  height: 40,
                  width: 130,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 30,
                        offset: Offset(0, 10),
                      ),
                    ],
                    gradient: LinearGradient(
                      colors: [
                        Colors.grey.shade800,
                        Colors.black,
                        Colors.grey.shade800,
                        Colors.black,
                        Colors.grey.shade800,
                      ],
                    ),
                  ),
                ),
                Spacer(),
                Slider(
                  inactiveColor: Colors.black,
                  activeColor: Color(0xffbd8934),
                  thumbColor: Colors.white,
                  value: lampValue,
                  onChanged: (newValue) {
                    setState(() {
                      lampValue = newValue;
                    });
                  },
                ),
                SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

final List<Color> bgColor1 = [Color(0xff161614), Color(0xff161614)];
final List<Color> bgColor2 = [
  Color(0xff2f2319),
  Color(0xff161614),
  Color(0xff161614),
];
final List<Color> bgColor3 = [
  Color(0xff6b4d22),
  Color(0xff453a20),
  Color(0xff161614),
  Color(0xff161614),
  Color(0xff161614),
];
final Color flameLightShadowColor1 = Colors.white38;
final Color offColor = Colors.black;
final Color flameLightShadowColor2 = Color(0xff75431b);
final Color flameLightShadowColor3 = Color(0xfff0cb83);
final Color flameLightInnerShadowColor1 = Colors.white;
final Color flameLightInnerShadowColor2 = Color(0xff6e3f1a);
final Color flameLightInnerShadowColor3 = Color(0xfff0cb83);
final List<Color> flameOffColor = [Colors.black, Colors.grey];
final List<Color> flameLightColor1 = [Colors.white, Colors.white];
final List<Color> flameLightColor2 = [
  Color(0xffd5a140),
  Color(0xfffcd685),
  Color(0xffffee4aa),
];
final List<Color> flameLightColor3 = [
  Color(0xfff0cb83),
  Color(0xffffe7ad),
  Colors.white,
];

List<Color> getBGColor(lampValue) {
  if (lampValue > 0.8) {
    return bgColor3;
  } else if (lampValue > 0.4 && lampValue < 0.8) {
    return bgColor2;
  } else {
    return bgColor1;
  }
}
List<Color> getFlameLightColor(lampValue) {
  if (lampValue > 0.8) {
    return flameLightColor3;
  } else if (lampValue > 0.4 && lampValue < 0.8) {
    return flameLightColor2;
  } else if (lampValue > 0.1 && lampValue < 0.5){
    return flameLightColor1;
  }else{
    return flameOffColor;
  }
}

Color getFlameLightShadowColor(lampValue) {
  if (lampValue > 0.75) {
    return flameLightShadowColor3;
  } else if (lampValue > 0.5 && lampValue < 0.75) {
    return flameLightShadowColor2;
  } else if (lampValue > 0.1 && lampValue < 0.5){
    return flameLightShadowColor1;
  }else{
    return offColor;
  }
}

Color getFlameLightInnerShadowColor(lampValue) {
  if (lampValue > 0.75) {
    return flameLightInnerShadowColor3;
  } else if (lampValue > 0.5 && lampValue < 0.75) {
    return flameLightInnerShadowColor2;
  } else if (lampValue > 0.1 && lampValue < 0.5){
    return flameLightShadowColor1;
  }else{
    return offColor;
  }
}
