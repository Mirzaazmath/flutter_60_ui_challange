import 'package:flutter/material.dart';
import 'package:ui_25_wheather_app/presentation/week_screen.dart';

import '../widgets/home_weather_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var hgt=MediaQuery.sizeOf(context).height;
    return Scaffold(
        body: Column(
      children: [
        const HomeWeatherCard(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const  WeekScreen()));
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Today",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Text(
                        "7 days >",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    for (int i = 0; i < 5; i++) ...[
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        height: double.infinity,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: i == 1
                                  ? [
                                      Theme.of(context).primaryColorDark,
                                      Theme.of(context).primaryColorLight,
                                    ]
                                  : [Colors.transparent, Colors.transparent]),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "2$i",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 17),
                            ),
                            SizedBox(
                              height: 30,
                              child: Image.asset("assets/thundercloud.png"),
                            ),
                            Text(
                              "${8 + i}:00",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 10),
                            ),
                          ],
                        ),
                      )
                    ]
                  ],
                ))
              ],
            ),
          ),
        ),
         SizedBox(height: hgt<700?10 :50,),
      ],
    ));
  }
}
