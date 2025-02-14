import 'package:flutter/material.dart';
import 'package:ui_34_parcel_delivery_app/data/order_model.dart';
import 'package:ui_34_parcel_delivery_app/data/section_model.dart';
import 'package:ui_34_parcel_delivery_app/details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var TContext = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: TContext.scaffoldBackgroundColor,
        title: Container(
          width: 200,
          padding: const EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
              color: TContext.primaryColorLight,
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                        image: AssetImage("assets/profile.jpeg"))),
              ),
              const SizedBox(
                width: 20,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Dev_73arner',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  Text(
                    '28 Feb 2025',
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  )
                ],
              )
            ],
          ),
        ),
        actions: [
          Container(
            width: 100,
            margin: const EdgeInsets.only(right: 10, top: 5),
            decoration: BoxDecoration(
                color: TContext.primaryColorLight,
                borderRadius: BorderRadius.circular(10)),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '872',
                  style: TextStyle(
                      color: TContext.primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                const Text(
                  ' Coins',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
              ],
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: TContext.primaryColorLight),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  const Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  const Expanded(
                      child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Track Your Package",
                          hintStyle: TextStyle(color: Colors.grey)),
                    ),
                  )),
                  Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.withOpacity(0.3)),
                      child: const Icon(
                        Icons.qr_code_scanner_outlined,
                        color: Colors.grey,
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.only(left: 20),
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: TContext.primaryColor,
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          "Discount",
                          style: TextStyle(color: Colors.white),
                        ),
                        const Text(
                          "20% OFF",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.black),
                          child: const Text(
                            "GET DISCOUNT",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        )
                      ],
                    ),
                  )),
                  Image.asset("assets/logistic.png"),
                ],
              ),
            ),
            Row(
              children: [
                for (int i = 0; i < sectionList.length; i++) ...[
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 5),
                      height: 90,
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: TContext.primaryColorLight,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            sectionList[i].icon,
                            color: Colors.white,
                            size: 28,
                          ),
                          Text(
                            sectionList[i].name,
                            style: const TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  )
                ]
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Recent Shipping",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                Text(
                  "See all",
                  style: TextStyle(
                    color: TContext.primaryColor,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: TContext.primaryColorLight,
                borderRadius: BorderRadius.circular(30),
              ),
              child: ListView(
                children: [
                  for (int i = 0; i < orderList.length; i++) ...[
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                DetailsScreen(data: orderList[i])));
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: i == orderList.length - 1
                                        ? Colors.transparent
                                        : Colors.grey.shade800))),
                        height: 75,
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundColor:
                                  orderList[i].status.toString().contains("way")
                                      ? Colors.orange
                                      : TContext.primaryColor,
                              child: const Icon(
                                Icons.delivery_dining_outlined,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Text(
                                    "ID NUMBER",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 10),
                                  ),
                                  Text(
                                    orderList[i].orderId,
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              orderList[i].status,
                              style: TextStyle(
                                  color: orderList[i]
                                          .status
                                          .toString()
                                          .contains("way")
                                      ? Colors.orange
                                      : TContext.primaryColor,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    )
                  ]
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
