import 'package:flutter/material.dart';
class HomeWeatherCard extends StatelessWidget {
  const HomeWeatherCard({super.key});

  @override
  Widget build(BuildContext context) {
     var hgt=MediaQuery.sizeOf(context).height;
     print(hgt);
    return Stack(
      children: [
        Container(
          height:hgt<700?500:650,
          margin:const  EdgeInsets.symmetric(horizontal: 15),
          decoration: const BoxDecoration(
              borderRadius:  BorderRadius.vertical(bottom: Radius.circular(50)),
              color: Color(0xff0d4292)
          ),
        ),
        Container(
          height:hgt<700?490:640,
          width: double.infinity,
          margin:const  EdgeInsets.only(left: 5,right: 5,bottom: 10),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors:[
                    Theme.of(context).primaryColorDark,
                    Theme.of(context).primaryColorLight,]
              ),
              boxShadow: [
                BoxShadow(
                    color:  Theme.of(context).primaryColorDark.withOpacity(0.8),
                    offset: const Offset(0,6),
                    blurRadius: 20
                )
              ],
              borderRadius: const BorderRadius.vertical(bottom: Radius.circular(50)),
              border: Border.all(color: Theme.of(context).primaryColor.withOpacity(0.3))
          ),
          padding:const  EdgeInsets.all(15),
          child: SafeArea(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(

                            color:  Theme.of(context).primaryColor,)),
                      child: Icon(Icons.tune,color: Theme.of(context).primaryColor,),
                    ),
                    Column(
                      children: [
                        Text("Minsk",style: TextStyle(color:Theme.of(context).primaryColor,fontWeight: FontWeight.bold,fontSize: 22),),
                        const SizedBox(height: 5,),
                        Container(
                          height: 25,
                          padding:const  EdgeInsets.symmetric(horizontal: 10),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(color:  Theme.of(context).primaryColor,)),
                          child:  Text("Updating..",style: TextStyle(color:Theme.of(context).primaryColor,fontWeight: FontWeight.bold,fontSize: 11),),
                        ),
                      ],
                    ),
                    Icon(Icons.more_vert,color: Theme.of(context).primaryColor,size: 30,),
                  ],
                ),
                SizedBox(
                  height: hgt<700?200:250,
                  child:   Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration:const  BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black,
                                  offset: Offset(40,20),
                                  blurRadius: 100
                              )
                            ]
                        ),
                      ),
                      Image.asset("assets/thundercloud.png"),
                    ],
                  ),
                ),
                Text("21",style: TextStyle(color:Theme.of(context).primaryColor,fontWeight: FontWeight.bold,fontSize: 50),),
                Text("Thunderstorm",style: TextStyle(color:Theme.of(context).primaryColor,fontWeight: FontWeight.bold,fontSize: 18),),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.air,
                          color:Theme.of(context).primaryColor,
                        ),
                        Text(
                          "13 Km/h",
                          style: TextStyle(
                              color:Theme.of(context).primaryColor,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Wind",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.water_drop,
                          color: Theme.of(context).primaryColor,
                        ),
                        Text(
                          "24%",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Humidity",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.water,
                          color: Theme.of(context).primaryColor,
                        ),
                        Text(
                          "87%",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Rain",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
