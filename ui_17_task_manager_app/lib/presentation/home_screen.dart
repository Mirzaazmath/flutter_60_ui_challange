import 'package:flutter/material.dart';
import 'package:ui_17_task_manager_app/data/task_data.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/nav_bar_widget.dart';
import '../widgets/task_card_slider.dart';
import '../widgets/task_list_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarWidget(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Recent Projects",
                  style: TextStyle(color: Colors.grey),
                ),
                TextButton.icon(
                  iconAlignment: IconAlignment.end,
                  onPressed: () {},
                  label: const Text(
                    "view all",
                    style: TextStyle(color: Colors.grey),
                  ),
                  icon:const  Icon(
                    Icons.arrow_forward,
                    size: 18,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
         const  TaskCardSlider(),
         const SizedBox(height: 20,),
           Expanded(
            child:TaskListWidget(subTaskList: taskDataList[1].subtasks,),
          )
        ],
      ),
      bottomNavigationBar: const NavBarWidget(),
    );
  }
}
