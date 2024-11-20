import 'package:flutter/material.dart';

import '../data/food_data.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

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
          "Wallet",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: CircleAvatar(
              backgroundColor: Theme.of(context).primaryColorDark,
              child: const Icon(Icons.notification_add_outlined),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Theme.of(context).primaryColorDark,
                image:const  DecorationImage(
                  image: AssetImage("assets/bg.jpg"),fit: BoxFit.fill
                ),
              ),
              padding:const  EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Your Balance",style: TextStyle(fontWeight: FontWeight.bold),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     const  Text("KD 17,267.12",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                      Chip(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                        label: Text("+ Top Up",style: TextStyle(color: Theme.of(context).primaryColorDark,fontWeight: FontWeight.bold),),backgroundColor: Theme.of(context).primaryColor,)
                    ],
                  )
                ],
                
              ),

            ),
           const  SizedBox(height: 20,),
            ////// *****  Cart List  ****** ///////
            Expanded(
                child: ListView.builder(
                    itemCount: 10,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 90,
                        width: double.infinity,
                        margin: const EdgeInsets.only(bottom: 10),
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Theme.of(context).primaryColorDark),
                        child: Row(
                          children: [
                            Container(
                              height: 90,
                              width: 80,
                              padding: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(
                                Icons.account_balance_wallet_outlined,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      index.isEven
                                          ? "Wallet Top Up"
                                          : "Order Checkout",
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold, fontSize: 14),
                                    ),
                                    Text(
                                      index.isEven
                                          ? "+ KD 25.00"
                                          : "- KD 25.00",
                                      style:  TextStyle(
                                          fontWeight: FontWeight.bold, fontSize: 14,color:  index.isEven? Colors.green:Colors.red),
                                    ),
                                  ],
                                ),
                               const  Text(
                                  "30 nov 2024, 19:07",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500, fontSize: 12),
                                ),

                              ],
                            ))
                          ],
                        ),
                      );
                    })),
          ],
        ),
      ),
    );
  }
}
