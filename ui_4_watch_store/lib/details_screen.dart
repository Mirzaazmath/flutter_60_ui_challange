import 'package:flutter/material.dart';
import 'package:ui_4_watch_store/animation/show_animation.dart';
import 'package:ui_4_watch_store/model/product_model.dart';

class DetailsScreen extends StatelessWidget {
  final ProductModel product;
  const DetailsScreen({super.key,required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ////// ***** App Bar **** ///////
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        centerTitle: true,
        title: const Text("Watch Details"),
        actions: [
          CircleAvatar(
            backgroundColor: Theme.of(context).primaryColorLight,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Icon(
                  Icons.shopping_bag,
                  color: Theme.of(context).primaryColor,
                ),
                Badge(
                  backgroundColor: Theme.of(context).indicatorColor,
                )
              ],
            ),
          ),
        ],
      ),
      ////// ***** Body **** ///////
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 10,),
            Center(
              child: Container(
                height: 280,
                width: 280,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(color: Theme.of(context).primaryColorDark),
                  shape: BoxShape.circle
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    const CircleAvatar(radius: 100,
                      backgroundColor: Color(0xfffad1b1),
                    ),
                    Hero(
                      tag:product.image,
                      child: Transform.rotate(
                        angle: -0.6,
                          child: Image.asset(product.image)),
                    )
                  ],
                ),
              ),
            ),
            ///// ***** Indicator Section **** ////////
            const SizedBox(
              height: 20,
            ),
            ShowUpAnimation(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < 5; i++) ...[
                    Container(
                      width: 15,
                      height: 5,
                      margin:const  EdgeInsets.only(left: 5),
                      decoration: BoxDecoration(
                          color:i==0? Theme.of(context).indicatorColor:Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(10)),
                    )
                  ]
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ///// ***** Title **** ////////
            ShowUpAnimation(
              delay: 100,
                child: Text(product.title,style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),)),
            const SizedBox(
              height: 10,
            ),
            ShowUpAnimation(
                delay: 150,
                child: Text("High Quality Private Label Fashion OEM ODM Factory Custom Logo Stainless Steel Waterproof Wrist Luxury Quartz Male Watch for Men",style: Theme.of(context).textTheme.bodySmall?.copyWith(),)),
            const SizedBox(
              height: 20,
            ),
            ShowUpAnimation(
              delay: 200,
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Size",style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),),
                      Text("Dress Watch",style: Theme.of(context).textTheme.bodySmall?.copyWith(),),
                    ],
                  ),
                 const  SizedBox(
                    width: 10,
                  ),
                  Expanded(child:
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for(int i=1;i<=10;i++)...[
                          Container(
                            height: 55,
                            width: 55,
                            margin:const EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color:i==3?Theme.of(context).indicatorColor: Theme.of(context).primaryColorLight
                            ),
                            alignment: Alignment.center,
                            child:  Text("4$i",style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold,color: i==3?Colors.white:Colors.black),),
                          ),
                        ]

                      ],
                    ),
                  )
                  )
                ],
              ),
            )

          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding:const EdgeInsets.all(10),
        height: 80,
        child: ShowUpAnimation(
          delay: 250,
          child: Row(
            children: [
              Container(
                height: 50,
                margin:const EdgeInsets.only(left: 5),
               alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColorLight,
                    borderRadius: BorderRadius.circular(10)
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5 ),

                child: Text("\$${product.price}",style: TextStyle(color: Theme.of(context).primaryColor,fontWeight: FontWeight.bold),),
              ),
             const  SizedBox(width: 20,),
              Expanded(
                child: Container(
                  height: 50,
                  margin:const EdgeInsets.only(left: 5),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5 ),

                  child: Text("Buy Now",style: TextStyle(color: Theme.of(context).indicatorColor,fontWeight: FontWeight.bold),),
                ),
              )
            ],

          ),
        ),
      ),
    );
  }
}
