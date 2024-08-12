import 'package:flutter/material.dart';
import 'package:ui_13_neomorphic_music_player/presentation/home_screen.dart';
import 'package:ui_13_neomorphic_music_player/presentation/widgets/button.dart';
class PlayingScreen extends StatelessWidget {
  final Song song;
  const PlayingScreen({super.key, required this.song});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(begin: Alignment.bottomLeft, colors: [
            Color(0xff181a1d),
            Color(0xff33383d),
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,

        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: CustomButton(
                        child: const Icon(
                          Icons.arrow_back_ios_new,
                          color: Color(0xff85878a),
                        ),
                      ),
                    ),
                    CustomButton(
                      child: const Icon(
                        Icons.menu,
                        color: Color(0xff85878a),
                      ),
                    ),

                  ],
                ),
                Container(
                  height: 270,
                  width: 270,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black26, width: 10),
                    shape: BoxShape.circle,
                    gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xff2b2f34),
                          Color(0xff1d1f23),
                        ]),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.white12,
                          blurRadius: 10,
                          offset: Offset(-5, -5)),
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10,
                          offset: Offset(10, 10))
                    ],
                  ),
                  alignment: Alignment.center,
                  child: const CircleAvatar(
                    radius: 175,
                    backgroundImage: AssetImage("assets/rose.jpg"),
                  ),
                ),
                const   SizedBox(height: 50,),
                  Text(
                  song.title,
                  style:const  TextStyle(
                      color: Color(0xffa6a7a9), fontWeight: FontWeight.bold,fontSize: 30),
                ),
                 Text(
                  song.feature,
                  style: const TextStyle(
                      color: Color(0xff707477), fontWeight: FontWeight.bold),
                ),
               const  SizedBox(height: 40,),
               const  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Text(
                      "1:17",
                      style: TextStyle(
                          color: Color(0xff707477), fontWeight: FontWeight.bold),
                    ),
                     Text(
                      "2:48",
                      style: TextStyle(
                          color: Color(0xff707477), fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                Container(
                  height: 6,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow:  [
                      BoxShadow(
                          color: Colors.grey.shade600,
                          blurRadius: 1,
                          offset: const Offset(0, 1))
                    ],
                  ),
                  alignment: Alignment.centerLeft,
                  child:   Container(
                    height: 6,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient:const  LinearGradient(
                        colors: [
                          Colors.deepOrange,
                           Colors.orange,
                        ]
                      )

                    ),

                  ),

                ),
                const SizedBox(height: 60,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomButton(
                      height: 70,
                      width: 70,
                      child: const Icon(
                        Icons.fast_rewind_rounded,
                        color: Color(0xff85878a),
                      ),
                    ),
                    Center(
                      child:
                      Container(
                        height: 100,
                        width: 100,
                        decoration:const  BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffed560d),
                        ),
                        alignment: Alignment.center,
                        child: Container(
                          height: 85,
                          width: 85,
                          foregroundDecoration:const  BoxDecoration(
                              shape: BoxShape.circle,
                              backgroundBlendMode: BlendMode.overlay,
                              gradient: LinearGradient(
                                  colors: [Colors.black,Colors.white]
                              )
                          ),
                          child:const  Icon(Icons.pause,color: Colors.white,size: 40,),
                        ),
                      ),
                    ),
                    CustomButton(
                      height: 70,
                      width: 70,
                      child: const Icon(
                        Icons.fast_forward,
                        color: Color(0xff85878a),
                      ),
                    )
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
