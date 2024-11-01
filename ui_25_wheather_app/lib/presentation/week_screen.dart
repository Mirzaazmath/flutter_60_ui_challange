import 'package:flutter/material.dart';
import 'package:ui_25_wheather_app/data/weather_data.dart';

import '../widgets/week_weather_card.dart';

class WeekScreen extends StatelessWidget {
  const WeekScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
        body: Column(
          children: [
            const WeekWeatherCard(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    for(int i=0;i<weatherWeekData.length;i++)...[
                      Row(
                      
                        children: [
                          Expanded(child: Text(weatherWeekData[i].day,style: TextStyle(color: Theme.of(context).primaryColor.withOpacity(0.6),fontSize: 16),)),
                         Expanded(child:  Row(
                           mainAxisAlignment: MainAxisAlignment.start,
                           children: [
                             SizedBox(
                               height: 40,
                               width: 30,

                               child: Image.asset(weatherWeekData[i].image,fit: BoxFit.cover,),
                             ),
                             const  SizedBox(width: 5,),
                             Text(weatherWeekData[i].title,style: TextStyle(color: Theme.of(context).primaryColor.withOpacity(0.6),fontSize:16),)
                           ],
                         ),),
                         Expanded(child:  Row(
                           mainAxisAlignment: MainAxisAlignment.end,
                           children: [
                             Text("+${weatherWeekData[i].temperature}",style: TextStyle(color: Theme.of(context).primaryColor,fontWeight: FontWeight.w800,fontSize: 16),),
                             Text("/${weatherWeekData[i].temperature2}",style: TextStyle(color: Theme.of(context).primaryColor.withOpacity(0.6),fontWeight: FontWeight.w800,fontSize: 14,),),
                           ],
                         ))
                        ],
                      )
                    ]

                    
                  ],
                ),
              ),
            )

          ],
        )
    );
  }
}
