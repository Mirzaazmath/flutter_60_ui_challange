import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

import 'data.dart';
import 'detail.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF9354B9),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFF0050AC), Color(0xFF9354B9)],
                stops: [0.3, 0.7],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "EXPLORE",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Solar System",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white38),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  height: 450,
                  child: Swiper(
                      itemCount: planets.length,
                      itemWidth:270,
                      layout: SwiperLayout.STACK,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            // Navigator.of(context).push(PageRouteBuilder(
                            //     pageBuilder: (context, a, b) =>
                            //         DetailsPage(planets[index])));
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailsPage(planets[index])));
                          },
                          child: Stack(
                            children: [
                              Column(
                                children: [
                                  const SizedBox(
                                    height: 100,
                                  ),
                                  Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    color: Colors.white,
                                    elevation: 10,
                                    child: Padding(
                                      padding: const EdgeInsets.all(30),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                        const   SizedBox(
                                            height: 100,
                                          ),
                                          Text(
                                            planets[index].name,
                                            style:const  TextStyle(
                                              fontSize: 40,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xff47455f),
                                            ),
                                          ),
                                          const Text(
                                            "Solar System",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xff47455f)),
                                          ),
                                         const  SizedBox(
                                            height: 30,
                                          ),
                                         const  Row(
                                            children: [
                                              Text(
                                                "Know More",
                                                style: TextStyle(
                                                    color: Colors.red,
                                                    fontSize: 16),
                                              ),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Icon(
                                                Icons.arrow_forward,
                                                color: Colors.red,
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Hero(
                               tag:planets[index].iconImage,
                                  child: Image.asset(planets[index].iconImage))
                            ],
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            color: Color(0xFF6751B5),
            borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
        padding: const EdgeInsets.all(24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {}, icon: Image.asset("assets/menu_icon.png")),
            IconButton(
                onPressed: () {}, icon: Image.asset("assets/search_icon.png")),
            IconButton(
                onPressed: () {}, icon: Image.asset("assets/profile_icon.png")),
          ],
        ),
      ),
    );
  }
}
