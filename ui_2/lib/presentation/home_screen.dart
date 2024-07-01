import 'package:flutter/material.dart';

import 'bike_view.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        title:const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hey Dev_73arner!",style: TextStyle(fontWeight: FontWeight.bold),),
            Text("Model No: 23422",style: TextStyle(fontSize: 14),),
          ],
        )
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Bike3DEffect()));
              },
                child: Hero(
                    tag: "Hello",
                    child: Image.asset("assets/image1.png"))),
            const SizedBox(height: 20,),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey.shade900.withOpacity(0.7),
              ),
              child: Row(
                children: [
                  IconButton.outlined(
                    onPressed: (){},
                    icon:const Icon(Icons.lock_open_outlined,color: Colors.green,),),
                   const Expanded(child: Center(child: Text("Swipe to Unlock",style: TextStyle(color: Colors.white),textAlign: TextAlign.center,))),
                  IconButton.outlined(
                    onPressed: (){},
                    icon:const Icon(Icons.lock_open_outlined,color: Colors.red,),),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              height: 70,
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey.shade900.withOpacity(0.7),
              ),
              child:const  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("6 KW",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                      Text("Battery",style: TextStyle(fontSize: 14,color: Colors.white),),
                    ],
                  ),
                  VerticalDivider(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("164 Km",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                      Text("Range",style: TextStyle(fontSize: 14,color: Colors.white),),
                    ],
                  ),
                  VerticalDivider(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Hybrid",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                      Text("150 cc",style: TextStyle(fontSize: 14,color: Colors.white),),
                    ],
                  ),
                   ],

              ),
            ),
            const SizedBox(height: 20,),
            const Text("Recent Ride",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 22)),
            const SizedBox(height: 10,),
            Expanded(
              child: Container(
                height: 50,
                width: double.infinity,
                foregroundDecoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.3),
                ),
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage("assets/map.jpg"),fit: BoxFit.fill
                  ),
                  borderRadius: BorderRadius.circular(30),

                ),


              ),
            ),

          ],
        ),
      ),

    );
  }
}
