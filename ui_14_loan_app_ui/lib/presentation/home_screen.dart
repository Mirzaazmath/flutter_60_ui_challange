import 'package:flutter/material.dart';
import 'package:ui_14_loan_app_ui/presentation/see_all_list_screen.dart';
import 'package:ui_14_loan_app_ui/utils/animation_utils.dart';
import '../widgets/due_amount_chain_list.dart';
import '../widgets/emi_amount_chain_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      //// **** App Bar **** /////
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          "Loan App",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
        ),
        actions:const  [
          SizedBox(width: 20,),
          CircleAvatar(backgroundImage: AssetImage("assets/profile.jpeg"),)
        ],
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
      ),
      //// **** Body **** /////
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            //// **** Current loan Amount  **** /////
            ShowUpAnimation(
              delay: 200,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  SizedBox(
                    height: 180,
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: const Color(0xffd3f036),
                              borderRadius: BorderRadius.circular(20)),
                          padding: const EdgeInsets.all(30),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Current Loan Amount",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              Text(
                                "\$ 2,534.000",
                                style: TextStyle(
                                    fontWeight: FontWeight.w900, fontSize: 25),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  //// **** Statistics **** /////
                  Container(
                    height: 70,
                    width: 250,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 10),
                        borderRadius: BorderRadius.circular(20)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.donut_small_outlined),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Statistics",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                //// **** Apply for a Loan **** /////
                ShowUpAnimation(
                  delay: 300,
                  child: Container(
                    height: 140,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    padding: const EdgeInsets.all(15),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Apply for a Loan",
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 17),
                        ),
                        Icon(
                          Icons.north_east,
                          size: 30,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                //// **** Loan Amount Due Chain **** /////
                 Expanded(child: ShowUpAnimation(
                   delay: 400,
                    child: const DueAmountChainList()))
              ],
            ),
            const SizedBox(height: 20),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const   Text(
                  "Activity",
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 19,
                      color: Colors.white),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const  SeeAllListScreen()));
                  },
                  child: const Text(
                    "See All",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),

            ////// ****** EMI Amount Chain List ******* ////////
            ShowUpAnimation(
              delay: 500,
                child: const EmiAmountChainList()),
          ],
        ),
      ),
    );
  }
}
