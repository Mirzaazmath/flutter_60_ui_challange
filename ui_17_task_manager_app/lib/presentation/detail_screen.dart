import 'package:flutter/material.dart';
import 'package:ui_17_task_manager_app/data/task_data.dart';
import 'package:ui_17_task_manager_app/utils/animation_utils.dart';

import '../widgets/task_list_widget.dart';
class DetailScreen extends StatelessWidget {
  final TaskData data;
  const DetailScreen({super.key,required this.data});

  @override
  Widget build(BuildContext context) {
    // Get the length of completed tasks
    int completedTaskCount = data.subtasks
        .where((subtask) => subtask.isCompleted)
        .length;
    return Scaffold(
   appBar: AppBar(
     backgroundColor: Colors.transparent,
     surfaceTintColor: Colors.transparent,
     foregroundColor: Colors.white,
     title: Text(data.title,),
   ),
       body: Column(
         children: [
           ShowUpAnimation(
             delay: 100,
             child: Container(
               margin: const EdgeInsets.only(right: 20,left: 20),
               height: 200,
               width: double.infinity,
               decoration: BoxDecoration(
                   color: data.isTodaysTask == true
                       ? Theme.of(context).primaryColor
                       : Theme.of(context).primaryColorLight,
                   borderRadius: BorderRadius.circular(30)),
               padding: const EdgeInsets.all(20),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Row(
                     children: [
                       Expanded(
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text(
                               data.title,
                               style: TextStyle(
                                   color: data.isTodaysTask == true
                                       ? Colors.black
                                       : Colors.white,
                                   fontWeight: FontWeight.bold,
                                   fontSize: 16),
                             ),
                             Text(
                               "${data.subtasks.length} tasks",
                               style: TextStyle(
                                   color: data.isTodaysTask == true
                                       ? Colors.black
                                       : Colors.grey,
                                   fontSize: 16),
                             ),
                           ],
                         ),
                       ),
                       Icon(
                         Icons.more_vert,
                         color: data.isTodaysTask == true
                             ? Colors.black
                             : Colors.white,
                       )
                     ],
                   ),
                   const SizedBox(
                     height: 10,
                   ),
                   Text(
                     maxLines: 3,
                     overflow: TextOverflow.fade,
                     data.description,
                     style: TextStyle(
                         color: data.isTodaysTask == true
                             ? Colors.black
                             : Colors.grey,
                         fontSize: 12),
                   ),
                   const SizedBox(
                     height: 10,
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text(
                         "Progress",
                         style: TextStyle(
                             color: data.isTodaysTask == true
                                 ? Colors.black
                                 : Colors.grey,
                             fontSize: 12),
                       ),
                       Text(
                         "${(completedTaskCount / data.subtasks.length * 100).toStringAsFixed(0)}%",
                         style: TextStyle(
                             color: data.isTodaysTask == true
                                 ? Colors.black
                                 : Colors.grey,
                             fontSize: 12),
                       ),
                     ],
                   ),
                   const SizedBox(
                     height: 5,
                   ),
                   LinearProgressIndicator(
                     borderRadius: BorderRadius.circular(20),
                     value:
                     (completedTaskCount / data.subtasks.length * 100) /
                         100,
                     color: data.isTodaysTask == true
                         ? Colors.white
                         : Theme.of(context).primaryColor,
                     backgroundColor: Colors.black54,
                   )
                 ],
               ),
             ),
           ),
            const   SizedBox(height: 20,),
            Expanded(child: ShowUpAnimation(
              delay: 200,
                child: TaskListWidget(subTaskList: data.subtasks,)))

         ],

    ),
    );
  }
}
