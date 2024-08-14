import 'package:flutter/material.dart';

class EmiAmountChainList extends StatelessWidget {
  const EmiAmountChainList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 3,
        itemBuilder: (context, index) {
          return Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                height: 110,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    alignment: Alignment.center,
                    child: ListTile(
                        leading: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Icon(
                            Icons.credit_score,
                            size: 30,
                          ),
                        ),
                        title: const Text(
                          "Personal Loan EMI",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.black),
                        ),
                        subtitle: const Text(
                          "\$ 150.10",
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 20),
                        ),
                        trailing: const Text(
                          "Due",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15),
                        )),
                  ),
                ),
              ),
              /////// ******* Bottom Chain Part ******* ////////
              //// *******  Hole  ***** ///////
              index==2?const SizedBox():    Positioned(
                bottom: 22,
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 7,
                        backgroundColor: Colors.black,
                      ),
                      CircleAvatar(
                        radius: 7,
                        backgroundColor: Colors.black,
                      )
                    ],
                  ),
                ),
              ),
              //// *******  Rope  ***** ///////
              index==2?const SizedBox():   Positioned(
                bottom: -5,
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  padding: const EdgeInsets.symmetric(horizontal: 54),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 35,
                        width: 6,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Container(
                        height: 35,
                        width: 6,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10)),
                      )
                    ],
                  ),
                ),
              ),
              /////// ******* Top Chain Part ******* ////////
              ///// **** Hole ***** ///////
              index==0?const SizedBox():    Positioned(
                top: 3,
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 7,
                        backgroundColor: Colors.black,
                      ),
                      CircleAvatar(
                        radius: 7,
                        backgroundColor: Colors.black,
                      )
                    ],
                  ),
                ),
              ),
              //// *******  Rope  ***** ///////
              index==0?const SizedBox():  Positioned(
                top: -12,
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  padding: const EdgeInsets.symmetric(horizontal: 54),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 25,
                        width: 6,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Container(
                        height: 25,
                        width: 6,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10)),
                      )
                    ],
                  ),
                ),
              ),
            ],
          );
        });
  }
}
