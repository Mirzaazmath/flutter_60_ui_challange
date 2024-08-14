import 'package:flutter/material.dart';
class DueAmountChainList extends StatelessWidget {
  const DueAmountChainList({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 140,
      child: ListView.builder(
          itemCount: 10,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Stack(
              alignment: Alignment.centerLeft,
              children: [
                SizedBox(
                  width: 210,
                  child: Row(
                    children: [
                      Container(
                        height: 140,
                        width: 195,
                        decoration: BoxDecoration(
                            color: const Color(0xffd3f036),
                            borderRadius:
                            BorderRadius.circular(20)),
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 20),
                        child: const Column(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Gold Loan EMI",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Badge(
                                  label: Text("Due"),
                                  backgroundColor: Colors.white,
                                  textColor: Colors.black,
                                ),
                              ],
                            ),
                            Text(
                              "\$ 150.10",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 22),
                            ),
                            Text(
                              "20 Aug 2024",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                            Row(
                              children: [
                                Text(
                                  "Pay Now",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.north_east,
                                  size: 22,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                index==9?const SizedBox():     const Positioned(
                  right: 20,
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 7,
                        backgroundColor: Colors.black,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      CircleAvatar(
                        radius: 7,
                        backgroundColor: Colors.black,
                      )
                    ],
                  ),
                ),
                index==9?const SizedBox():   Positioned(
                  right: -12,
                  child: Column(
                    children: [
                      Container(
                        height: 6,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                            borderRadius:
                            BorderRadius.circular(10)),
                      ),
                      const SizedBox(
                        height: 37,
                      ),
                      Container(
                        height: 6,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                            borderRadius:
                            BorderRadius.circular(10)),
                      )
                    ],
                  ),
                ),
                index==0?const SizedBox():   const Positioned(
                  left: 2,
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 7,
                        backgroundColor: Colors.black,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      CircleAvatar(
                        radius: 7,
                        backgroundColor: Colors.black,
                      )
                    ],
                  ),
                ),
                index==0?const SizedBox():     Positioned(
                  left: -15,
                  child: Column(
                    children: [
                      Container(
                        height: 6,
                        width: 25,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border:const Border(bottom: BorderSide(color: Colors.black)),
                            borderRadius:
                            BorderRadius.circular(10)),
                      ),
                      const SizedBox(
                        height: 37,
                      ),
                      Container(
                        height: 6,
                        width: 25,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                            borderRadius:
                            BorderRadius.circular(10)),
                      )
                    ],
                  ),
                ),
              ],
            );
          }),
    );
  }
}
