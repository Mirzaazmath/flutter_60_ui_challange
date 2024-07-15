import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:ui_5_travel_bag_app/product_detail.dart';

import 'bagsmodel.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title:const  Text(
            "Home",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          leading: IconButton(
            icon: Padding(
              padding: const EdgeInsets.all(5),
              child: Image.asset(
                "assets/images/app_icon.png",
              ),
            ),
            onPressed: () {
              ZoomDrawer.of(context)!.toggle();
            },
          ),
          actions: const [
             InkWell(
              child: Padding(
                padding:  EdgeInsets.all(8.0),
                child: Stack(children: [
                  Icon(
                    Icons.notifications,
                    size: 30,
                    color: Colors.black,
                  ),
                  Positioned(
                      right: 0,
                      top: 5,
                      left: 10,
                      child: CircleAvatar(
                        radius: 5,
                        backgroundColor: Color(0xffa10f03),
                      ))
                ]),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Hi Dev73arner! ",
                    style: TextStyle(
                        fontSize: 30,
                        color: Color(0xff180226),
                        fontWeight: FontWeight.bold)),
                const SizedBox(height: 5),
                const Text("Explore Travel Bags Here.. ",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        alignment: Alignment.center,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: TextFormField(
                          decoration:const  InputDecoration(
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.black,
                              ),
                              border: InputBorder.none),
                        ),
                      ),
                    ),
                   const  SizedBox(
                      width: 20,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 50,
                      decoration:const  BoxDecoration(
                          color: Color(0xff06c1cf), shape: BoxShape.circle),
                      child:const  Icon(
                        Icons.tune,
                        color: Colors.white70,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Stack(
                  children: [
                    Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          padding:const EdgeInsets.all(25),
                          height: 160,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Explore Latest",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Bags with Price",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey[700]),
                              ),
                              const  SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding:const EdgeInsets.only(
                                    top: 10, bottom: 10, left: 20, right: 20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color:const Color(0xff06c1cf),
                                ),
                                child:const Text(
                                  "Explore",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      right: 0,
                      bottom: 10,
                      child: SizedBox(
                        height: 180,
                        child: Image.asset("assets/images/bags_1.png"),
                      ),
                    )
                  ],
                ),
               const  SizedBox(
                  height: 15,
                ),
               const  Row(
                  children: [
                    Expanded(
                        child: Text("The most searched bags ",
                            style: TextStyle(
                                fontSize: 19,
                                color: Color(0xff180226),
                                fontWeight: FontWeight.bold))),
                    InkWell(
                      child: Text(
                        "View all",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 290,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: bagList.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    ProductDetail(bagList[index])));
                          },
                          child: Stack(children: [
                            Column(
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  margin:const  EdgeInsets.all(10),
                                  padding:const EdgeInsets.all(20),
                                  height: 250,
                                  width: 200,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Colors.white),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  bagList[index].name,
                                                  style:const  TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  "${bagList[index].price}\\-",
                                                  style:const TextStyle(
                                                      color: Colors.grey),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 50,
                                            child: Icon(
                                              Icons.favorite_outline,
                                              color: Color(0xff06c1cf),
                                              size: 30,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                                left: 30,
                                child: SizedBox(
                                    height: 200,
                                    child: Hero(
                                      tag:bagList[index].image,
                                        child: Image.asset(bagList[index].image))))
                          ]),
                        );
                      }),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  children: [
                    Expanded(
                        child: Text("The most searched bags ",
                            style: TextStyle(
                                fontSize: 19,
                                color: Color(0xff180226),
                                fontWeight: FontWeight.bold))),
                    InkWell(
                      child: Text(
                        "View all",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 290,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: bagList2.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    ProductDetail(bagList2[index])));
                          },
                          child: Stack(children: [
                            Column(
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  margin: const EdgeInsets.all(10),
                                  padding: const EdgeInsets.all(20),
                                  height: 250,
                                  width: 200,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Colors.white),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  bagList2[index].name,
                                                  style: const TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  "${bagList2[index].price}\\-",
                                                  style: const TextStyle(
                                                      color: Colors.grey),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 50,
                                            child: Icon(
                                              Icons.favorite_outline,
                                              color: Color(0xff06c1cf),
                                              size: 30,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                                left: 30,
                                child: SizedBox(
                                    height: 200,

                                    child: Image.asset(bagList2[index].image)))
                          ]),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          color: Colors.white,
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: GNav(
              gap: 8,
              tabBackgroundColor: Color(0xff06c1cf),
              color: Colors.grey,
              activeColor: Colors.white,
              backgroundColor: Colors.white,
              padding: EdgeInsets.all(10),
              tabs: [
                GButton(
                  icon: Icons.home_outlined,
                  text: "Home",
                ),
                GButton(
                  icon: Icons.search_outlined,
                  text: "Search",
                ),
                GButton(
                  icon: Icons.favorite_outline,
                  text: "Favorite",
                ),
                GButton(
                  icon: Icons.person_2_outlined,
                  text: "Profile",
                ),
              ],
            ),
          ),
        ));
  }
}
