import 'package:flutter/material.dart';
import 'package:ui_30_task_flow/data/task_data.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        title: const Text(
          "Tasks",
          style: TextStyle(fontWeight: FontWeight.w500,fontSize: 26),
        ),
        actions: const [
          SizedBox(
            width: 15,
          ),
          CircleAvatar(
            backgroundColor: Colors.white10,
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          CircleAvatar(
            backgroundColor: Colors.white10,
            child: Icon(
              Icons.tune,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body:ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        shrinkWrap: true,
          itemCount: taskList.length,
          itemBuilder: (context,index){
          Task data=taskList[index];
        return  Container(
          margin: const EdgeInsets.only(bottom: 10),
          width: double.infinity,
          height: 100,
          padding:const  EdgeInsets.all(15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Theme.of(context).primaryColor
          ),
          child: Row(
            children: [
              Container(
                width: 4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: data.color
                ),
              ),
              const   SizedBox(width:20,),
              Expanded(child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(data.title,style:const  TextStyle(fontWeight: FontWeight.w700,fontSize: 18),),
                  Row(
                    children: [
                      Expanded(child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(children: data.tags.map((item)=> Container(
                          margin: const EdgeInsets.only(right: 10),
                          height: 20,
                          padding:const  EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            color: Colors.deepOrange.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          alignment: Alignment.center,
                          child:  Text(item,style:const  TextStyle(fontSize: 12),),
                        ),).toList()


                                ),
                      )),
                      const  SizedBox(width:10,),
                        Text(data.time,style:const  TextStyle(fontSize: 12),)
                    ],
                  )
                ],
              ))
            ],
          ),
        );
      })
    );
  }
}
