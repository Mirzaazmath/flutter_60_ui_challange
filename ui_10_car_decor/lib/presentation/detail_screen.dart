import 'package:flutter/material.dart';

import '../data/car_data.dart';
class DetailScreen extends StatelessWidget {
  final Car item;
  const DetailScreen({super.key,required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffbfbfd),
      appBar: AppBar(
        backgroundColor:const  Color(0xfffbfbfd),
        surfaceTintColor: Colors.transparent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              SizedBox(
                height: 260,
                child: Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Column(
                    children: [
                       Align(
                         alignment:Alignment.topRight,
                           child: Text(item.name,style: const TextStyle(fontSize: 33,fontWeight: FontWeight.bold),)),
                      Align(
                          alignment:Alignment.topRight,
                          child: Text(item.slogan,style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
                     const  Spacer(),
                     const  Align(
                          alignment:Alignment.topRight,
                          child: Text("300",style:  TextStyle(fontSize: 33,),)),
                     const  Align(
                          alignment:Alignment.topRight,
                          child: Text("km/h",style:  TextStyle(fontSize: 15,),)),
                     const  Spacer(),
                     const Align(
                          alignment:Alignment.topRight,
                          child: Text("2.8s",style:  TextStyle(fontSize: 33,),)),
                     const Align(
                          alignment:Alignment.topRight,
                          child: Text("0-100km/h",style:  TextStyle(fontSize: 15,),)),


                    ],
                  ),
                ),
              ),
              Positioned(
                left:-200,

                  child: SizedBox(
                    height:item.name.contains("SL")?260: 290,
                child: Hero(
                  tag: item.image,
                    child: Image.asset(item.image)),
              ))
            ],
          ),
          const SizedBox(height: 30,),
           Padding(
            padding: const  EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Motor",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                const SizedBox(height: 15,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        margin:const  EdgeInsets.only(right: 25),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xfff3f3f8)
                        ),
                        padding:const  EdgeInsets.all(10),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Text("VTEC",style:  TextStyle(fontSize: 25,fontWeight: FontWeight.w500)),
                            Text("Gasoil",style:  TextStyle(fontSize: 16,)),
                          ],
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        margin:const  EdgeInsets.only(right: 25),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xfff3f3f8)
                        ),
                        padding:const  EdgeInsets.all(10),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("VTEC",style:  TextStyle(fontSize: 25,fontWeight: FontWeight.w500)),
                            Text("Gasoil",style:  TextStyle(fontSize: 16,)),
                          ],
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color:  item.color,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade500,
                                  offset: const Offset(10,10),
                                  blurRadius: 20
                              )
                            ]
                        ),
                        padding:const  EdgeInsets.all(10),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("VTEC",style:  TextStyle(fontSize: 25,fontWeight: FontWeight.w500,color: Colors.white)),
                            Text("Gasoil",style:  TextStyle(fontSize: 16,color: Colors.white)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15,),
                const Text("Design",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),

                const SizedBox(height: 15,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 90,
                        width: 180,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color:  item.color,

                        ),
                        padding:const  EdgeInsets.symmetric(horizontal: 20),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("PREMIUM",style:  TextStyle(fontSize: 25,fontWeight: FontWeight.w500,color: Colors.white)),
                            Text("Design Pack",style:  TextStyle(fontSize: 16,color: Colors.white)),
                          ],
                        ),
                      ),
                     const  SizedBox(width: 29,),
                      Container(
                        height: 90,
                        width: 180,
                        margin:const  EdgeInsets.only(right: 25),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xfff3f3f8)
                        ),
                        padding:const  EdgeInsets.symmetric(horizontal: 20),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("SPORT",style:  TextStyle(fontSize: 25,fontWeight: FontWeight.w500)),
                            Text("Design Pack",style:  TextStyle(fontSize: 16,)),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
                const SizedBox(height: 45,),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 65,
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color:  item.color,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade500,
                              offset: const Offset(10,10),
                              blurRadius: 20
                          )
                        ]
                    ),
                    alignment: Alignment.center,
                    padding:const  EdgeInsets.all(10),
                    child:const   Text("Order Now",style:  TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white)),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
