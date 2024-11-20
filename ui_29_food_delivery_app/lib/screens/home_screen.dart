import 'package:flutter/material.dart';
import 'package:ui_29_food_delivery_app/data/food_data.dart';
import 'package:ui_29_food_delivery_app/screens/cart_screen.dart';
import 'package:ui_29_food_delivery_app/screens/wallet_screen.dart';

import '../data/option_data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedOption = 'Food';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ////// ***** App Bar ****** ///////
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.all(5),
          child: CircleAvatar(
            backgroundColor: Theme.of(context).primaryColorDark,
            child: const Icon(Icons.menu,color: Colors.black,),
          ),
        ),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Delivering to",
              style: TextStyle(fontSize: 12),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.location_on_outlined),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Salmiya, Qatar street ",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
                SizedBox(
                  width: 10,
                ),
                const Icon(Icons.expand_more_rounded),
              ],
            ),
          ],
        ),
        actions: [
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const WalletScreen()));
            },
            child: CircleAvatar(
              backgroundColor: Theme.of(context).primaryColorDark,
              child: const Icon(Icons.account_balance_wallet_outlined,color: Colors.black,),
            ),
          ),
          const SizedBox(width: 10,)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const CartScreen()));
        },
        child: Icon(Icons.shopping_cart_outlined,color: Theme.of(context).primaryColorDark,),
      ),
      ////// ***** Body ****** ///////
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ////// ***** Search Bar ****** ///////
            Container(
              height: 50,
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColorDark,
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: const Row(
                children: [
                  Icon(Icons.search),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(child: Text("Search")),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: VerticalDivider(),
                  ),
                  Icon(Icons.tune),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ////// ***** Options List ****** ///////
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: optionList
                    .map((opt) => Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedOption = opt.title;
                              });
                            },
                            child: Chip(
                                backgroundColor: selectedOption == opt.title
                                    ? Theme.of(context).primaryColor
                                    : Theme.of(context).primaryColorDark,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)),
                                avatar: CircleAvatar(
                                  radius: 14,
                                  backgroundColor: selectedOption == opt.title
                                      ? Theme.of(context).primaryColorDark
                                      : Theme.of(context).primaryColor,
                                  child: Icon(
                                    opt.icon,
                                    size: 12,
                                    color: selectedOption == opt.title
                                        ? Theme.of(context).primaryColor
                                        : Theme.of(context).primaryColorDark,
                                  ),
                                ),
                                label: Text(
                                  opt.title,
                                  style: TextStyle(
                                      color: selectedOption == opt.title
                                          ? Theme.of(context).primaryColorDark
                                          : Colors.black),
                                )),
                          ),
                        ))
                    .toList(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ////// ***** Heading Text ****** ///////
            const Text(
              "Food Near You",
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
            ),
            const SizedBox(
              height: 20,
            ),
            ////// ***** Food Item List ****** ///////
            ListView.builder(
                shrinkWrap: true,
                itemCount: foodList.length,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    height: 260,
                    margin: const EdgeInsets.only(bottom: 15),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Theme.of(context).primaryColorDark,
                    ),
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 160,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(foodList[index].image),
                                  fit: BoxFit.fill)),
                          alignment: Alignment.topRight,
                          padding: const EdgeInsets.all(15),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: Theme.of(context).primaryColorDark,
                            child: Icon(
                              Icons.shopping_cart_outlined,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              foodList[index].title,
                              style:const  TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.timer_outlined,
                                  color: Colors.grey,
                                  size: 20,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "${foodList[index].duration} Minutes",
                                  style:const  TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              "KD ${foodList[index].price}",
                              style: const TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 15),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            Container(
                              height: 20,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(10)),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                    size: 19,
                                  ),
                                  Text(
                                    "${foodList[index].rating}",
                                    style:const  TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
