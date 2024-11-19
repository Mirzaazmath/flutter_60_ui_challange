import 'package:flutter/material.dart';
class ExchangeScreen extends StatelessWidget {
  const ExchangeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 90,
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 20),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned.fill(
                  child: CircularProgressIndicator(
                    color: Theme.of(context).primaryColorDark,
                    value: 1,
                    strokeWidth: 2,
                  ),
                ),
                const Icon(Icons.arrow_back_ios)
              ],
            ),
          ),
        ),
        actions:  [
          const CircleAvatar(
            radius: 15,
            backgroundColor: Colors.white,
            child:  Icon(Icons.more_horiz),
          ),
          const   SizedBox(
            width: 10,
          ),
          Text(
            "0x760...35ced",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
                color: Theme.of(context).primaryColorDark),
          ),
          const   SizedBox(
            width: 20,
          )
        ],
      ),
      ///////// ****** ******* //////////
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "New Exchange Rate In",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade600,
                  fontSize: 12),
            ),
            RichText(
              text:  TextSpan(
                text: '00:08:45',
                style:const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 28),
                children: <TextSpan>[
                  TextSpan(
                      text: ' Seconds',
                      style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 12,color: Colors.grey.shade600)),
                ],
              ),
            ),
            ///////// ****** ******* //////////
            const SizedBox(
              height: 20,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Column(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(20),
                          height: 160,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(30)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "You Pay",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11,
                                ),
                              ),
                              ListTile(
                                contentPadding: EdgeInsets.zero,
                                leading: CircleAvatar(
                                  backgroundColor: Colors.white54,
                                  child: Icon(
                                    Icons.attach_money,
                                    color: Theme.of(context)
                                        .primaryColorDark,
                                  ),
                                ),
                                title: Text(
                                  "USDT",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                      color: Theme.of(context)
                                          .primaryColorDark),
                                ),
                                trailing: RichText(
                                  text: TextSpan(
                                    text: '250.00',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Theme.of(context)
                                            .primaryColorDark,
                                        fontSize: 25),
                                    children: const <TextSpan>[
                                      TextSpan(
                                          text: ' USDT',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12,
                                              color: Colors.black)),
                                    ],
                                  ),
                                ),
                              ),
                             const  Text(
                                "Balance 12,788.56",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 11,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        ///////// ****** ******* //////////
                        Positioned(
                          top: 0,
                          child: Container(
                            height: 40,
                            width: 120,
                            decoration: BoxDecoration(
                              color:Theme.of(context).scaffoldBackgroundColor,
                              borderRadius:const BorderRadius.vertical(bottom: Radius.circular(20)),
                            ),
                            padding:const  EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                               Container(
                                 width: 40,
                                 height: 25,
                                 decoration: BoxDecoration(
                                   color:const  Color(0xfffee1b7),
                                   borderRadius: BorderRadius.circular(30)
                                 ),
                                 alignment: Alignment.center,
                                 child:const  Text("Half",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500),),
                               ),
                                Container(
                                  width: 40,
                                  height: 25,
                                  decoration: BoxDecoration(
                                      color:const  Color(0xffe9d3f7),
                                      borderRadius: BorderRadius.circular(30)
                                  ),
                                  alignment: Alignment.center,
                                  child:const  Text("Max",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500),),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                   const  SizedBox(height: 15,),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(20),
                          height: 160,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Theme.of(context).primaryColorDark,
                              borderRadius: BorderRadius.circular(30)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                               Text(
                                "You Pay",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11,
                                  color: Theme.of(context).scaffoldBackgroundColor,
                                ),
                              ),
                              ListTile(
                                contentPadding: EdgeInsets.zero,
                                leading: CircleAvatar(
                                  backgroundColor: Colors.white24,
                                  child: Icon(
                                    Icons.currency_rupee_sharp,
                                    color: Theme.of(context)
                                        .scaffoldBackgroundColor,
                                  ),
                                ),
                                title: Text(
                                  "INR",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context)
                                          .scaffoldBackgroundColor),
                                ),
                                trailing: RichText(
                                  text: TextSpan(
                                    text: '21,102.00',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Theme.of(context)
                                            .scaffoldBackgroundColor,
                                        fontSize: 25),
                                    children:  <TextSpan>[
                                      TextSpan(
                                          text: ' INR',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12,
                                              color: Theme.of(context).scaffoldBackgroundColor)),
                                    ],
                                  ),
                                ),
                              ),
                                Text(
                                "Balance 24.56",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11,
                                  color: Theme.of(context).scaffoldBackgroundColor
                                ),
                              ),
                            ],
                          ),
                        ),
                        ///////// ****** ******* //////////
                        Positioned(
                          bottom: 0,
                          child: Container(
                            height: 40,
                            width: 120,
                            decoration: BoxDecoration(
                              color:Theme.of(context).scaffoldBackgroundColor,
                              borderRadius:const BorderRadius.vertical(top: Radius.circular(20)),
                            ),
                            alignment: Alignment.center,
                            padding:const  EdgeInsets.symmetric(horizontal: 15),
                            child:   Container(
                              width: double.infinity,
                              height: 25,
                              decoration: BoxDecoration(
                                  color:Theme.of(context).primaryColorDark,
                                  borderRadius: BorderRadius.circular(30)
                              ),
                              alignment: Alignment.center,
                              child:const  Text("Overview",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500,color:Colors.white),),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                ///////// ****** ******* //////////
                CircleAvatar(
                  radius: 60,
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  child: Container(
                    margin:const  EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 3)
                    ),
                    alignment: Alignment.center,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Theme.of(context).primaryColorDark,
                      child:  Icon(Icons.currency_exchange,color: Theme.of(context).scaffoldBackgroundColor,size: 35,),
                    ),
                  ),
                )],
            ),
            ///////// ****** ******* //////////
            const SizedBox(height: 40),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Exchange rate",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                ),
                Text(
                  "1 USDT = 84 INR",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ],
            ),
            ///////// ****** ******* //////////
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Network  fee",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                ),
                Text(
                  "5 USDT",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),

              ],
            ),
            ///////// ****** ******* //////////
           const  Divider(
             height: 50,
           ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Max Total",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                ),
                Text(
                  "255.00 USDT",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),

              ],
            ),
            ///////// ****** ******* //////////
           const  SizedBox(height: 30,),
            Container(
              height: 70,
              padding:const  EdgeInsets.all(10),
              margin: const EdgeInsets.symmetric(horizontal: 40),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColorDark,
                borderRadius: BorderRadius.circular(50)
              ),
              
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.attach_money,
                      color: Theme.of(context)
                      .primaryColorDark,
                    ),
                  ),
                 const  Text("Swipe",style:TextStyle(color: Colors.white),),
                  CircleAvatar(
                    backgroundColor: Colors.white24,
                    child: Icon(
                      Icons.currency_rupee_sharp,
                      color: Theme.of(context)
                          .scaffoldBackgroundColor,
                    ),
                  ),
                ],
              ),
            )
            ///////// ****** ******* //////////
          ],
        ),
      ),
    );
  }
}
