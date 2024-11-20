import 'package:flutter/material.dart';
import 'package:ui_29_food_delivery_app/data/food_data.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ////// ***** App Bar ****** ///////
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: CircleAvatar(
              backgroundColor: Theme.of(context).primaryColorDark,
              child: const Icon(Icons.arrow_back_sharp),
            ),
          ),
        ),
        title: const Text(
          "Cart",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: CircleAvatar(
              backgroundColor: Theme.of(context).primaryColorDark,
              child: const Icon(Icons.add),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              ////// *****  Cart List  ****** ///////
              Expanded(
                  child: ListView.builder(
                      itemCount: foodList.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 100,
                          width: double.infinity,
                          margin: const EdgeInsets.only(bottom: 10),
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Theme.of(context).primaryColorDark),
                          child: Row(
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                padding: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image:
                                            AssetImage(foodList[index].image),
                                        fit: BoxFit.fill)),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                  child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    foodList[index].title,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "KD ${foodList[index].price}",
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14),
                                      ),
                                      Icon(
                                        Icons.bookmark,
                                        size: 18,
                                        color: Theme.of(context).primaryColor,
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 14,
                                        backgroundColor: Colors.grey.shade300,
                                        child: const Icon(
                                          Icons.remove,
                                          size: 18,
                                        ),
                                      ),
                                      const Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8),
                                        child: Text(
                                          "1",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16),
                                        ),
                                      ),
                                      CircleAvatar(
                                        radius: 14,
                                        backgroundColor:
                                            Theme.of(context).primaryColor,
                                        child: const Icon(
                                          Icons.add,
                                          size: 18,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ))
                            ],
                          ),
                        );
                      })),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 45,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).primaryColorDark),
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Icon(Icons.verified_outlined,color: Theme.of(context).primaryColor,),
                  const   SizedBox(width: 10),
                  const   Expanded(
                      child:  Text(
                        "Promo Codes",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      ),
                    ),
                   const  Text(
                      "View Offers",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 11),
                    ),
                  ],
                )
              ),
              const SizedBox(height: 15),
              ////// *****  Total Description  ****** ///////
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColorDark,
                    borderRadius: BorderRadius.circular(20)),
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("Total items"), Text("KD 5.300")],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("Delivery Fee"), Text("KD 0.100")],
                    ),
                    SizedBox(
                      height: 30,
                      width: double.infinity,
                      child: Row(
                        children: List.generate(
                            80 ~/ 1,
                            (index) => Expanded(
                                  child: Container(
                                    color: index % 2 == 0
                                        ? Colors.transparent
                                        : Colors.grey,
                                    height: 1,
                                  ),
                                )),
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("Branch Discount"), Text("- KD 1.200")],
                    ),
                    SizedBox(
                      height: 30,
                      width: double.infinity,
                      child: Row(
                        children: List.generate(
                            80 ~/ 1,
                            (index) => Expanded(
                                  child: Container(
                                    color: index % 2 == 0
                                        ? Colors.transparent
                                        : Colors.grey,
                                    height: 1,
                                  ),
                                )),
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total Pay",
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 16),
                        ),
                        Text(
                          "KD 4.200",
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 16),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ////// *****  Order Button  ****** ///////
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Theme.of(context).primaryColor),
                alignment: Alignment.center,
                child: const Text(
                  "Place Order",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
