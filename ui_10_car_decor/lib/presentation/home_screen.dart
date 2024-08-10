import 'package:flutter/material.dart';
import 'package:ui_10_car_decor/data/car_data.dart';

import 'detail_screen.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffbfbfd),
      appBar: AppBar(
        backgroundColor:const  Color(0xfffbfbfd),
        surfaceTintColor: Colors.transparent,
        leading:const  Icon(Icons.segment),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Pick your model",style: TextStyle(fontSize: 33,fontWeight: FontWeight.bold),),
           const SizedBox(height: 40,),
            Expanded(
              child: ListView.builder(
               itemCount: carList.length,
                  shrinkWrap: true,
                  itemBuilder: (context,index){
                return GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreen(item: carList[index],)));
                  },
                  child: Stack(
                    children: [
                      SizedBox(
                        height: 280,
                        child: Column(
                          children: [
                            Container(
                              height: 200,
                              width: double.infinity,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(30),
                               color: carList[index].color
                             ),
                              padding:const  EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                   Text(carList[index].name,style:const  TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
                                  Text(carList[index].slogan,style:const  TextStyle(fontSize: 17,color: Colors.white),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 30,
                        bottom:60 ,
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                              shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade300,
                                offset: const Offset(1,1),
                                blurRadius: 3
                              )
                            ]
                          ),
                          child:const  Icon(Icons.add),
                        ),
                      ),
                      Positioned(
                        right: 0,
                          bottom:0,
                          child: SizedBox(
                          height:160,
                            child: Hero(
                              tag: carList[index].image,
                                child: Image.asset(carList[index].image)))
                      )
                  
                    ],
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
