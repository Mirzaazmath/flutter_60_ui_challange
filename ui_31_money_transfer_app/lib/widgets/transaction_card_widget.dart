import 'package:flutter/material.dart';
import 'package:ui_31_money_transfer_app/data/transactions_data.dart';

class TransactionCardWidget extends StatelessWidget {
  final Transaction data;
  const TransactionCardWidget({super.key,required this.data});

  @override
  Widget build(BuildContext context) {
    return  Container(
        height: 70,
        margin:const  EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Theme.of(context).primaryColorLight)
        ),
        padding:const  EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Theme.of(context).primaryColorLight)
              ),
              padding: const EdgeInsets.all(10),
              child: Image.asset(data.image),
            ),
            const SizedBox(width: 20,),
            Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(data.title,style: TextStyle(color: Theme.of(context).primaryColorDark,fontWeight: FontWeight.bold,fontSize: 16),),
                Text(data.subtitle,style: TextStyle(color: Theme.of(context).primaryColorLight,fontWeight: FontWeight.bold,fontSize: 14),)
              ],)),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("\$${data.amount}",style: TextStyle(color: Theme.of(context).primaryColorDark,fontWeight: FontWeight.w500,fontSize: 17),),
                Text(data.time,style: TextStyle(color: Theme.of(context).primaryColorLight,fontWeight: FontWeight.normal,fontSize: 14),)
              ],)
          ],
        )
    );
  }
}
