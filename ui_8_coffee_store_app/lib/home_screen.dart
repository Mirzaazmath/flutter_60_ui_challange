import 'dart:math';

import 'package:flutter/material.dart';

import 'data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController _pageController=PageController();
  @override
  Widget build(BuildContext context) {

    return Stack(
      alignment: Alignment.center,
      children: [
        /// *** Background Color Box **** /////
        Container(
          decoration: const BoxDecoration(
            color: Color(0xff017b4a),
          ),
          child: Stack(
            children: [
              /// *** Foreground Color Blur **** /////
              Center(
                child: Container(
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
                    BoxShadow(
                        color: Colors.greenAccent.withOpacity(0.5),
                        blurRadius: 100,
                        spreadRadius: 100)
                  ]),
                ),
              ),
              /// **** Scaffold **** ////
              Scaffold(
                backgroundColor: Colors.transparent,
                body: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// **** Logo Container **** ////
                      Center(
                        child: Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color(0xff024c3f)),
                          padding: const EdgeInsets.all(10),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage: AssetImage("assets/logo.png"),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "STARBUCKS",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 16),
                              )
                            ],
                          ),
                        ),
                      ),
                      /// **** Description Container **** ////
                      Container(
                        height: 380,
                        width: double.infinity,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                  color: Color(0xff0f5d43),
                                  blurRadius: 25,
                                  spreadRadius: -3)
                            ]),
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const SizedBox(height: 25,),
                            Expanded(
                              child: SizedBox(
                                child:PageView.builder(
                                  controller: _pageController,
                                  scrollDirection: Axis.vertical,
                                    itemCount: coffeeList.length,
                                    itemBuilder: (context,index){
                                  return Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      RichText(
                                        text:  TextSpan(
                                          text: '\$',
                                          style: const TextStyle(color: Colors.black,fontSize: 20),
                                          children:  <TextSpan>[
                                            TextSpan(text: coffeeList[index].price.toString(), style:const TextStyle(fontWeight: FontWeight.bold,fontSize: 32)),

                                          ],
                                        ),
                                      ),
                                      const  SizedBox(height: 20,),
                                        Text( coffeeList[index].title,style: const TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                                      const  SizedBox(height: 20,),
                                        Text(coffeeList[index].description,maxLines: 4,),
                                      const  SizedBox(height: 20,),
                                    ],
                                  );
                                }),
                              ),
                            ),


                            Container(
                                height: 50,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.black,
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 25,
                                          spreadRadius: -3,
                                          offset: Offset(10, 10))
                                    ]),
                                alignment: Alignment.center,
                                child: const Text(
                                  "GET IT",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 16),
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

        /// ***** Custom Image slider ****** ////
         CustomImageCoroasel(
           onPageChange: (index){
             _pageController.animateToPage(index, duration: const Duration(milliseconds: 300), curve: Curves.elasticOut);
           },

        )
      ],
    );
  }
}

class CustomImageCoroasel extends StatefulWidget {
  final Function(int val) onPageChange;
   CustomImageCoroasel({super.key,required this.onPageChange});

  @override
  _CustomImageCoroaselState createState() => _CustomImageCoroaselState();
}

class _CustomImageCoroaselState extends State<CustomImageCoroasel> {
  double viewPortFraction = 0.5;

  late PageController pageController;

  int currentPage = 2;


  double page = 2.0;

  @override
  void initState() {
    pageController = PageController(
        initialPage: currentPage, viewportFraction: viewPortFraction);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          height: 300,
          child: NotificationListener<ScrollNotification>(
            onNotification: (ScrollNotification notification) {
              if (notification is ScrollUpdateNotification) {
                setState(() {
                  page = pageController.page!;
                });
              }
              return true;
            },
            child: PageView.builder(
              onPageChanged: (pos) {
                setState(() {
                  currentPage = pos;
                });
                widget.onPageChange(pos);

              },
              physics: const BouncingScrollPhysics(),
              controller: pageController,
              itemCount: coffeeList.length,
              itemBuilder: (context, index) {
                final scale = max(SCALE_FRACTION,
                    (FULL_SCALE - (index - page).abs()) + viewPortFraction);
                return imageWidget(coffeeList[index].image, scale);
              },
            ),
          ),
        ),
        const SizedBox(
          height: 350,
        )
      ],
    );
  }

  /// *** Image Widget *** ////
  Widget imageWidget(String image, double scale) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        children: [
          SizedBox(
            height: PAGER_HEIGHT * scale,
            width: 100 * scale,
            child: Image.asset(
              image,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            height: 5,
            width: 50 * scale,
            decoration: const BoxDecoration(
                boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 10)]),
          )
        ],
      ),
    );
  }
}

const SCALE_FRACTION = 0.7;
const FULL_SCALE = 1.0;
const PAGER_HEIGHT = 190.0;
