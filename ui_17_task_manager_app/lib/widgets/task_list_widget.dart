import 'package:flutter/material.dart';

import '../data/task_data.dart';

class TaskListWidget extends StatefulWidget {
 final List<SubTask>subTaskList;
  const TaskListWidget({super.key,required this.subTaskList});

  @override
  State<TaskListWidget> createState() => _TaskListWidgetState();
}

class _TaskListWidgetState extends State<TaskListWidget> {
  int? selectedIndex;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
        padding: const EdgeInsets.only(left: 15,right: 15, top: 10),
        itemCount: widget.subTaskList.length,
        itemBuilder: (context, index) {
          SubTask data = widget.subTaskList[index];
          return Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Transform.rotate(
                    angle: 0.8,
                    child: Container(
                      height: 25,
                      width: 25,
                      padding: const EdgeInsets.all(3),
                      margin: const EdgeInsets.symmetric(vertical: 6),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              color: selectedIndex==index?Theme.of(context).primaryColor:
                              Colors.black,

                              width: 2)
                          //Theme.of(context).primaryColor
                          ),
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20,),
                  Expanded(
                      child: Container(
                        margin:const  EdgeInsets.only(bottom: 20),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Theme.of(context).primaryColorLight
                        ),
                        child: Theme(
                          data: ThemeData(dividerColor: Colors.transparent),
                          child: ExpansionTile(
                            onExpansionChanged: (state){
                              if(state){
                                selectedIndex=index;
                              }else{
                                selectedIndex=null;
                              }
                              setState(() {

                              });
                            },
                            leading: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color:Colors.grey.shade700,
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: Colors.grey.shade800,width: 7)
                              ),
                              child: Transform.scale(
                                scale: 1.6,
                                child: Checkbox(
                                  value: data.isCompleted,
                                  fillColor:  WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
                                    return Colors.transparent;
                                  }),
                                  checkColor: Theme.of(context).primaryColor,
                                  side: const BorderSide(color: Colors.transparent),
                                  onChanged: (bool? value) {
                                    setState(() {
                                      data.isCompleted=! data.isCompleted;
                                    });
                                  },),
                              ),
                            ),
                            iconColor: Colors.white,
                            collapsedIconColor: Colors.white,
                            title:Text(data.title,style:const  TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                            subtitle: Text(data.deadline,style:const  TextStyle(color: Colors.grey,fontSize: 16),),
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 70),
                                child: Text(data.description,style:const  TextStyle(color: Colors.grey,fontSize: 16),),
                              ),
                            ],
                            ),
                        ),

                  ))
                ],
              ),
              Positioned.fill(
                child: Container(
                  margin:const  EdgeInsets.only(top: 36,left: 5),
                  alignment: Alignment.centerLeft,
                  child:index== widget.subTaskList.length-1?const  SizedBox():  VerticalDivider(
                    color:Theme.of(context).primaryColor,
                    thickness: 3,

                  ),
                ),
              ),
            ],
          );
        });
  }
}
