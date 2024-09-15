import 'package:flutter/material.dart';
import 'package:ui_18_monster_energy/utils/animation_utils.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool rollCan = true;
  bool isToggle = false;
  bool showCard = false;
  List<String> images = [
    "assets/back.jpeg",
    "assets/side.jpeg",
    "assets/front.jpeg"
  ];
  late PageController _pageController;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void startRoll() {
    _pageController.animateToPage(
      2,
      duration: const Duration(milliseconds: 1200),
      curve: Curves.easeInOut,
    );
  }

  void reverseRoll() {
    _pageController.animateToPage(
      0,
      duration: const Duration(milliseconds: 1200),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          rollCan = !rollCan;
          if (rollCan) {
            reverseRoll();
            showCard = false;
          } else {
            startRoll();
            Future.delayed(const Duration(seconds: 1), () {
              setState(() {
                showCard = true;
              });
            });
          }
        });
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          alignment: Alignment.center,
          children: [
            rollCan?  AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              child: SafeArea(
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   SizedBox(
                     height: MediaQuery.sizeOf(context).height*0.4,
                       child: Image.asset("assets/logo.png")),
                   Container(
                     margin:const  EdgeInsets.symmetric(horizontal: 20,vertical: 50),
                     height: 50,
                     width: double.infinity,
                     decoration: BoxDecoration(
                       color: Colors.lightGreen,
                       borderRadius: BorderRadius.circular(10),

                     ),
                     alignment: Alignment.center,
                     child: const Text(
                       "Buy Now",
                       style: TextStyle(
                           fontWeight: FontWeight.w900, fontSize: 22,color: Colors.white),
                     ),
                   )
                 ],
               ),
                         ),
            ):const SizedBox(),


    Center(
              child: AnimatedContainer(
                  height: isToggle ? MediaQuery.sizeOf(context).height : 20,
                  width: isToggle ? MediaQuery.sizeOf(context).width : 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(isToggle ? 0 : 100),
                      color: isToggle ? Colors.lightGreen : Colors.white),

                  /// Duration
                  duration: const Duration(milliseconds: 100)),
            ),
            AnimatedPositioned(
              right: rollCan ? -180 : MediaQuery.sizeOf(context).width / 3,
              duration: const Duration(seconds: 1),
              onEnd: () {
                setState(() {
                  isToggle = !isToggle;
                });
              },
              child: Container(
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.black54,
                      blurRadius: 30,
                      offset: Offset(-20, 10))
                ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 6,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade500,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        height: 400,
                        width: 150,
                        foregroundDecoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.black54,
                              Colors.transparent,
                            ],
                          ),
                        ),
                        decoration: const BoxDecoration(color: Colors.black),
                        child: Stack(alignment: Alignment.center, children: [
                          PageView.builder(
                            controller: _pageController,
                            itemCount: images.length,
                            itemBuilder: (context, index) {
                              return Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(images[index]),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              );
                            },
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              margin: const EdgeInsets.only(left: 10),
                              width: 5,
                              height: double.infinity,
                              decoration: const BoxDecoration(boxShadow: [
                                BoxShadow(color: Colors.white, blurRadius: 5)
                              ]),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              margin: const EdgeInsets.only(right: 10),
                              width: 5,
                              height: double.infinity,
                              decoration: const BoxDecoration(boxShadow: [
                                BoxShadow(color: Colors.white, blurRadius: 10)
                              ]),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              margin: const EdgeInsets.only(right: 10),
                              width: 10,
                              height: double.infinity,
                              decoration: const BoxDecoration(boxShadow: [
                                BoxShadow(color: Colors.white, blurRadius: 30)
                              ]),
                            ),
                          ),
                        ]),
                      ),
                    ),
                    Container(
                      height: 6,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade500,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            AnimatedPositioned(
                bottom: showCard ? 0 : -280,
                duration: const Duration(milliseconds: 300),
                child: Container(
                  margin: const EdgeInsets.all(30),
                  padding: const EdgeInsets.all(20),
                  height: 220,
                  width: MediaQuery.sizeOf(context).width - 60,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ShowUpAnimation(
                        delay: 3000,
                        child: const Text(
                          "Monster Energy",
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 22),
                        ),
                      ),
                      ShowUpAnimation(
                        delay: 3200,
                        child: const Text(
                          "Tear into a can of one of the meanest energy drinks on the planet, Monster OG. Monster Energy OG is a smooth, refreshing blend of sweet and salty exotic citrus flavors with a hint of pure adrenaline packing 160MG of Caffiine. Unleash the beast with Monster OG!",
                          maxLines: 3,
                        ),
                      ),
                      ShowUpAnimation(
                        delay: 3300,
                        child: Row(
                          children: [
                            for (int i = 0; i < 5; i++) ...[
                              const Icon(
                                Icons.star,
                                color: Colors.orange,
                              )
                            ],
                            const Spacer(),
                            const Icon(
                              Icons.thumb_up_alt_outlined,
                              color: Colors.lightGreen,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "2.k",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      ShowUpAnimation(
                        delay: 3300,
                        child: Row(
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      color: Colors.lightGreen,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: const Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                  child: Text(
                                    "1",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 22),
                                  ),
                                ),
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      color: Colors.lightGreen,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                    color: Colors.lightGreen, width: 2),
                              ),
                              alignment: Alignment.center,
                              child: const Text(
                                "\$2",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 21),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.lightGreen,
                                  borderRadius: BorderRadius.circular(8)),
                              child: const Icon(
                                Icons.shopping_cart,
                                color: Colors.white,
                              ),
                            ))
                          ],
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
