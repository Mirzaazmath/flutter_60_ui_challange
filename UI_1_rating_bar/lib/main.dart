

import 'package:another_xlider/another_xlider.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  double _lowerValue = 0;
  double _upperValue = 10;
  String imageUrl = "assets/emoji_1.png";
  String emotion = "That's horrible";


  @override
  Widget build(BuildContext context) {
    print("hello");
    return Scaffold(
      backgroundColor: const Color(0xFF2D3142),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const  Text("How's your day",style: TextStyle(
                fontSize: 32,
                color: Color(0xFF69708D),
                fontWeight: FontWeight.w700),
            ),
            Image.asset(imageUrl),
            Text(emotion,style: const TextStyle(
                fontSize: 32,
                color: Color(0xFF69708D),
                fontWeight: FontWeight.w700),
            ),


            Padding(padding:const  EdgeInsets.all(30),
              child: FlutterSlider(values: [_lowerValue],
                min: 0.0,
                max: 10,
                trackBar: FlutterSliderTrackBar(
                  inactiveTrackBar: BoxDecoration(
                    color: Colors.grey.shade700,
                  ),
                  activeTrackBarHeight: 8,
                  activeTrackBar: BoxDecoration(
                    color: const Color(0xFFEF8354),
                    gradient: const LinearGradient(
                      colors: [
                        Colors.purple,
                        Colors.orange,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                handler: FlutterSliderHandler(
                  child: Material(
                    type: MaterialType.canvas,
                    color: Colors.white,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Container(
                        padding: const EdgeInsets.all(5),
                        child: const Icon(
                          Icons.arrow_forward_ios,
                          size: 25,
                        )),
                  ),
                ), handlerAnimation: const FlutterSliderHandlerAnimation(
                    curve: Curves.elasticOut,
                    duration: Duration(milliseconds: 700),
                    scale: 1.4),
                tooltip: FlutterSliderTooltip(
                  disabled: true,
                ),
                onDragging: (handlerIndex, lowerValue, upperValue) {
                  _lowerValue = lowerValue;
                  _upperValue = upperValue;
                  if (lowerValue >= 2.0 && lowerValue < 4.0) {
                    imageUrl = "assets/emoji_2.png";
                    emotion = "It's not that good";
                  } else if (lowerValue >= 4.0 && lowerValue < 6.0) {
                    imageUrl = "assets/emoji_3.png";
                    emotion = "I am okay..";
                  } else if (lowerValue >= 6.0 && lowerValue < 8.0) {
                    imageUrl = "assets/emoji_4.png";
                    emotion = "It's awesome";
                  } else if (lowerValue >= 8.0 && lowerValue <= 10.0) {
                    imageUrl = "assets/emoji_5.png";
                    emotion = "I really love it!";
                  } else {
                    imageUrl = "assets/emoji_1.png";
                    emotion = "That's horrible";
                  }
                  setState(() {});
                },


              ),

            ),


          ],
        ),
      ),
    );
  }
}