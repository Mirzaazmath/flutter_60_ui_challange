import 'package:flutter/material.dart';
import 'package:ui_31_money_transfer_app/data/options_data.dart';
class OptionsWidget extends StatelessWidget {
  const OptionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 110,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Theme.of(context).primaryColorLight)
      ),
      padding:const  EdgeInsets.all(10),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          for(int i=0;i<optionList.length;i++)...[
            Container(
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius:const  BorderRadius.vertical(top: Radius.circular(60),bottom: Radius.circular(100)),
                  border: Border.all(color: Theme.of(context).primaryColorLight)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Icon(optionList[i].icon,color:optionList[i].color,),
                  const  SizedBox(height: 5,),
                  Text(optionList[i].title,style: TextStyle(color: Theme.of(context).primaryColorDark,fontWeight: FontWeight.w500,fontSize: 12),),
                ],
              ),
            )
          ]
        ]
      )
    );
  }
}
