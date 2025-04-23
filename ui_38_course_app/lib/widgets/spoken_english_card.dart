import 'package:flutter/material.dart';
class SpokenEnglishCard extends StatelessWidget {
  const SpokenEnglishCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        Container(
          padding: EdgeInsets.all(5),
          margin: EdgeInsets.only(top: 30),
          height: 110,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              SizedBox(width: 100,),
              Expanded(child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Spoken English",style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),),
                  SizedBox(
                    height: 30,
                    child: Row(children: [
                      Expanded(
                        child: ListTile(
                          dense:true,
                          contentPadding: EdgeInsets.zero,
                          horizontalTitleGap: 5,
                          leading:CircleAvatar(
                            backgroundColor: Colors.black26,
                            radius: 12,
                            child: Icon(Icons.co_present_outlined,color: Colors.black,size: 12,),
                          ),
                          title: Text("26 Live Class",style: Theme.of(context).textTheme.labelSmall?.copyWith(fontWeight: FontWeight.bold),),
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          contentPadding: EdgeInsets.zero,
                          dense:true,
                          horizontalTitleGap: 5,
                          leading:CircleAvatar(
                            backgroundColor: Colors.black26,
                            radius: 12,
                            child: Icon(Icons.subscriptions_outlined,color: Colors.black,size: 12,),
                          ),
                          title: Text("40 Videos",style: Theme.of(context).textTheme.labelSmall?.copyWith(fontWeight: FontWeight.bold),),
                        ),
                      )
                    ],),
                  ),
                  SizedBox(
                    height: 35,
                    child: Row(children: [
                      Expanded(
                        child: ListTile(
                          dense:true,
                          contentPadding: EdgeInsets.zero,
                          horizontalTitleGap: 5,
                          leading:CircleAvatar(
                            backgroundColor: Colors.black26,
                            radius: 12,
                            child: Icon(Icons.assignment_outlined,color: Colors.black,size: 12,),
                          ),
                          title: Text("Weekly Exams",style: Theme.of(context).textTheme.labelSmall?.copyWith(fontWeight: FontWeight.bold),),
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          contentPadding: EdgeInsets.zero,
                          dense:true,
                          horizontalTitleGap: 5,
                          leading:CircleAvatar(
                            backgroundColor: Colors.black26,
                            radius: 12,
                            child: Icon(Icons.edit_square,color: Colors.black,size: 12,),
                          ),
                          title: Text("Hand Notes",style: Theme.of(context).textTheme.labelSmall?.copyWith(fontWeight: FontWeight.bold),),
                        ),
                      )
                    ],),
                  )
                ],
              ),
              ),
            ],
          ),
        ),
        Positioned(
          left: -17,
          bottom: 0,
          child: SizedBox(width: 140
            ,child:  Image.asset("assets/teacher4.png"),),
        )
      ],
    );
  }
}
