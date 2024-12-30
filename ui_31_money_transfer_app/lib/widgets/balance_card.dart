import 'package:flutter/material.dart';
class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        Container(
          height: 150,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: Theme.of(context).primaryColorLight),
              image: const DecorationImage(
                  opacity: 0.2,
                  image: AssetImage("assets/graph.png")
              )
          ),
          padding:const  EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Total Balance",style: TextStyle(color: Theme.of(context).primaryColorLight,fontSize: 12),),
              Text("\$27300.00",style: TextStyle(color: Theme.of(context).primaryColorDark,fontWeight: FontWeight.w500,fontSize: 30),),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Income",style: TextStyle(color: Theme.of(context).primaryColorLight,fontSize: 12),),
                      Text("\$27300.00",style: TextStyle(color: Theme.of(context).primaryColorDark,fontWeight: FontWeight.bold,fontSize: 12),),
                    ],
                  ),
                  const SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Expense",style: TextStyle(color: Theme.of(context).primaryColorLight,fontSize: 12),),
                      Text("\$27300.00",style: TextStyle(color: Theme.of(context).primaryColorDark,fontWeight: FontWeight.bold,fontSize: 10),),
                    ],
                  ),
                ],
              )
            ],
          ),

        ),
        Stack(
          children: [
            Container(
              height: 100,
              width: 130,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.horizontal(left: Radius.circular(10)),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xffe4a443),
                        Color(0xff7d6138)
                      ]
                  )
              ),
              padding:const  EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("***9872",style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 12,fontWeight: FontWeight.bold),),
                  Text("Exp:02/26",style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 10,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            Positioned(
                top: -10,
                left: -10,
                child: SizedBox(
                  height: 50,
                  width: 50,
                  child: CircularProgressIndicator(
                    value: 1,
                    color: Theme.of(context).primaryColorDark.withOpacity(0.3),
                  ),
                )),
            Positioned(
                bottom: -20,
                left:50,
                child: SizedBox(
                  height: 50,
                  width: 50,
                  child: CircularProgressIndicator(
                    value: 1,
                    color: Theme.of(context).primaryColorDark.withOpacity(0.3),
                  ),
                ))
          ],
        )
      ],
    );
  }
}
