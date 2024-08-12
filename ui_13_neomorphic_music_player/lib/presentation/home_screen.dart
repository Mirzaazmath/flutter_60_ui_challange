import 'package:flutter/material.dart';
import 'package:ui_13_neomorphic_music_player/presentation/playing_screen.dart';
import 'package:ui_13_neomorphic_music_player/presentation/widgets/button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          title: const Text(
            "Song List",
            style: TextStyle(
                color: Color(0xff707477), fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                    child: const Icon(
                      Icons.favorite,
                      color: Color(0xff85878a),
                    ),
                  ),
                  Container(
                    height: 170,
                    width: 170,
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
                      radius: 75,
                      backgroundImage: AssetImage("assets/rose.jpg"),
                    ),
                  ),
                  CustomButton(
                    child: const Icon(
                      Icons.more_horiz,
                      color: Color(0xff85878a),
                    ),
                  )
                ],
              ),
            const   SizedBox(height: 50,),
              ListView.builder(
                shrinkWrap: true,
                itemCount: songsList.length,
                  physics:const  NeverScrollableScrollPhysics(),
                  itemBuilder: (context,index){
                return GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> PlayingScreen(song:songsList[index])));
                  },
                  child: Container(
                      padding:const  EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient:   LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors:index==2? [
                                Colors.black45,
                                Colors.black,
                              ]:[
                                Colors.transparent,
                                Colors.transparent,
                              ]
                          )
                      ),
                      child: ListTile(
                          contentPadding: EdgeInsets.zero,
                          title:   Text(
                            songsList[index].title,
                            style:const TextStyle(
                                color: Color(0xffa6a7a9), fontWeight: FontWeight.bold),
                          ),
                          subtitle:  Text(
                            songsList[index].feature,
                            style:const  TextStyle(
                                color: Color(0xff707477), fontWeight: FontWeight.bold),
                          ),
                          trailing: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              border: Border.all(color:index==2? Colors.deepOrangeAccent:Colors.grey.shade800),
                              shape: BoxShape.circle,
                              gradient:  LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: index==2? const [
                                    Color(0xffda3215),
                                    Color(0xffe5550b),
                                  ]:
                                const [
                                  Color(0xff2b2f34),
                                  Color(0xff1d1f23),
                                ]
                              ),
                              boxShadow:const  [
                                BoxShadow(
                                    color: Colors.white12,
                                    blurRadius: 5,
                                    offset: Offset(-2,-2)
                                ),
                                BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 5,
                                    offset: Offset(6,6)
                                )
                              ],
                            ),
                            alignment: Alignment.center,
                            child:  Icon(
                              Icons.play_arrow,
                              color: index==2? Colors.white:const  Color(0xff85878a)
                              // color: Color(0xff85878a),
                            ),
                          )
                      )),
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
class Song{
  final String title;
  final String feature;
  Song({required this.title,required this.feature});
}
List<Song>songsList=[Song(title: "Ain't No Time", feature: "Future"),
  Song(title: "Perfect", feature: "Ed Sheeran"),
  Song(title: "Low Life", feature: "Future ft. The Weekend"),
  Song(title: "Roar", feature: "Katy Perry"),
  Song(title: "Happier", feature: "Marshmallow"),
  Song(title: "Despacito", feature: "Louis fonsi ft. Daddy w"),
  Song(title: "Shape of You", feature: "Ed Sheeran"),
  Song(title: "Let me love you", feature: "Justin bieber"),
  Song(title: "Fire", feature: "Future"),
  Song(title: "Titanium", feature: "Sia"),
  Song(title: "Dark horse", feature: "Katy Perry"),
];