import 'package:flutter/material.dart';
import 'package:ui_27_wallet_app/exchange_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          children: [
            Text(
              "Welcome!",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade500,
                  fontSize: 12),
            ),
            const Text(
              "Dev_73arner",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: 25),
            ),
          ],
        ),

        actions: const [
          CircleAvatar(
            radius: 15,
            backgroundColor: Colors.white,
            child: const Icon(Icons.more_horiz),
          ),
          SizedBox(
            width: 10,
          ),
          CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage("assets/profile.jpeg"),
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      ///////// ****** ******* //////////
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           const  SizedBox(height: 10,),
            Text(
              "Your Challenges",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade500,
                  fontSize: 12),
            ),
            const Text(
              "For Dream",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: 25),
            ),
            ///////// ****** ******* //////////
            const SizedBox(
              height: 20,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: 60,
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Theme.of(context).primaryColorLight,
                        ),
                        child: Row(
                          children: [
                            IconButton.outlined(
                                style: IconButton.styleFrom(
                                    side: const BorderSide(width: 2)),
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.download_outlined,
                                  size: 20,
                                )),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "Withdraw",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 15),
                            ),
                          ],
                        ),
                      )),

                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Theme.of(context).primaryColor,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text(
                              "Share",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 15),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            IconButton.outlined(
                                style: IconButton.styleFrom(
                                    side: const BorderSide(width: 2)),
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.share,
                                  size: 20,
                                )),
                          ],
                        ),
                      ))
                    ],
                  ),
                ),
                CircleAvatar(
                  radius: 31,
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  child: const CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            ///////// ****** ******* //////////
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text(
                "Total Amount",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
            ),
            Center(
                child: RichText(
              text: const TextSpan(
                text: '50,000.000',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 25),
                children: <TextSpan>[
                  TextSpan(
                      text: ' USDT',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 12)),
                ],
              ),
            )),
            ///////// ****** ******* //////////
            const Divider(
              height: 50,
              color: Colors.white,
            ),
            ///////// ****** ******* //////////
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Left to Reach the Goal",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                ),
                Text(
                  "36,500.25 USDT",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                ),
              ],
            ),
            ///////// ****** ******* //////////
            const SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                Container(
                  height: 40,
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 100),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.black,
                            size: 15,
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.grey,
                            size: 15,
                          ),
                        ],
                      ),
                      Text(
                        "75%",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 12),
                      ),
                    ],
                  ),
                ),
                Container(
                    width: 95,
                    height: 40,
                    padding: const EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        borderRadius: BorderRadius.circular(30)),
                    child: Container(
                      width: 95,
                      height: 40,
                      decoration: BoxDecoration(
                          color: const Color(0xffe9d3f7),
                          borderRadius: BorderRadius.circular(30)),
                      alignment: Alignment.center,
                      child: const Text(
                        "25%",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 12),
                      ),
                    ))
              ],
            ),
            ///////// ****** ******* //////////
            const SizedBox(
              height: 15,
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
                          height: 270,
                          width: double.infinity,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Theme.of(context).primaryColorDark,
                              borderRadius: BorderRadius.circular(30)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  height: 50,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: Colors.white12,
                                      borderRadius: BorderRadius.circular(30)),
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 10),
                                  alignment: Alignment.center,
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Theme.of(context)
                                            .scaffoldBackgroundColor,
                                        child: const Icon(
                                          Icons.download_outlined,
                                          size: 20,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Expanded(
                                          child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Your top-ups",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 15,
                                                color: Theme.of(context)
                                                    .scaffoldBackgroundColor),
                                          ),
                                          const Text(
                                            "35 Additions",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12,
                                                color: Colors.grey),
                                          ),
                                        ],
                                      )),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          text: '9,230',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Theme.of(context)
                                                  .scaffoldBackgroundColor,
                                              fontSize: 13),
                                          children: const <TextSpan>[
                                            TextSpan(
                                                text: '.550',
                                                style: TextStyle(
                                                    color: Colors.grey)),
                                          ],
                                        ),
                                      )
                                    ],
                                  )),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                  height: 45,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: Colors.white12,
                                      borderRadius: BorderRadius.circular(30)),
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 10),
                                  alignment: Alignment.center,
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Theme.of(context)
                                            .scaffoldBackgroundColor,
                                        child: const Icon(
                                          Icons.download_outlined,
                                          size: 20,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Expanded(
                                          child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Adding participants",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14,
                                                color: Theme.of(context)
                                                    .scaffoldBackgroundColor),
                                          ),
                                          const Text(
                                            "16 Additions",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 10,
                                                color: Colors.grey),
                                          ),
                                        ],
                                      )),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          text: '9,230',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Theme.of(context)
                                                  .scaffoldBackgroundColor,
                                              fontSize: 13),
                                          children: const <TextSpan>[
                                            TextSpan(
                                                text: '.550',
                                                style: TextStyle(
                                                    color: Colors.grey)),
                                          ],
                                        ),
                                      )
                                    ],
                                  )),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Divider(
                                  height: 40,
                                  color: Colors.grey,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Top UP",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: Theme.of(context)
                                              .scaffoldBackgroundColor),
                                    ),
                                    Text(
                                      "0x760...35ced",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: Theme.of(context)
                                              .scaffoldBackgroundColor),
                                    ),
                                  ],
                                ),
                              ),
                              ListTile(
                                contentPadding: EdgeInsets.zero,
                                leading: CircleAvatar(
                                  backgroundColor: Colors.white12,
                                  child: Icon(
                                    Icons.text_fields_outlined,
                                    color: Theme.of(context)
                                        .scaffoldBackgroundColor,
                                  ),
                                ),
                                title: Text(
                                  "USDT",
                                  style: TextStyle(
                                      color: Theme.of(context)
                                          .scaffoldBackgroundColor),
                                ),
                                trailing: RichText(
                                  text: TextSpan(
                                    text: '250.00',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Theme.of(context)
                                            .scaffoldBackgroundColor,
                                        fontSize: 25),
                                    children: const <TextSpan>[
                                      TextSpan(
                                          text: ' USDT',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12,
                                              color: Colors.grey)),
                                    ],
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Balance 12,788.56",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 11,
                                      color: Colors.grey),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                            left: -10,
                            child: CircleAvatar(
                              radius: 15,
                              backgroundColor:
                                  Theme.of(context).scaffoldBackgroundColor,
                            )),
                        Positioned(
                            right: -10,
                            child: CircleAvatar(
                              radius: 15,
                              backgroundColor:
                                  Theme.of(context).scaffoldBackgroundColor,
                            ))
                      ],
                    ),
                    const SizedBox(height: 100)
                  ],
                ),
                ///////// ****** ******* //////////
                Positioned(
                  bottom: 0,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const  ExchangeScreen()));
                      },
                      child: CircleAvatar(
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
                            child:  Icon(Icons.download_outlined,color: Theme.of(context).scaffoldBackgroundColor,size: 35,),
                          ),
                        ),
                      ),
                    ))

              ],
            )
          ],
        ),
      ),
    );
  }
}
