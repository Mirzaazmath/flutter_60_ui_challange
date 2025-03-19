import 'package:flutter/material.dart';
import 'package:ui_35_fitness_tracker/dashboard_screen.dart';

import 'activity_screen.dart';
import 'history_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Menu>menuItems=[
    Menu(title: "Home", icon: Icons.home_filled),
    Menu(title: "Activity", icon: Icons.pie_chart),
    Menu(title: "", icon: Icons.add),
    Menu(title: "History", icon: Icons.calendar_month_sharp),
    Menu(title: "More", icon: Icons.grid_view_rounded),
  ];
  int selectedIndex=0;
  List<Widget>bodyWidget=const [
    DashboardScreen(),
    ActivityScreen(),
    HistoryScreen(),
    HistoryScreen(),
    SizedBox(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: const Padding(
          padding:  EdgeInsets.all(5),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/profile.jpeg"),
          ),
          
        ),
        title:const  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Good Morning",style: TextStyle(fontSize: 16),),
            Text("Dev_73arner",style: TextStyle(fontWeight: FontWeight.bold),),

          ],
        ),
        actions: [
          IconButton.outlined(onPressed: (){}, icon: const Icon(Icons.notifications_none))
        ],

      ),
      body: Padding(
        padding: const  EdgeInsets.all(15),
        child:   bodyWidget[selectedIndex],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: CircleAvatar(
          radius: 50,
          backgroundColor: Theme.of(context).primaryColor,
          child: const CircleAvatar(
            radius: 30,
            backgroundColor: Colors.white24,
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Theme.of(context).primaryColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            for(int i=0;i<menuItems.length;i++)...[
              GestureDetector(
                onTap: (){
                  setState(() {
                    selectedIndex=i;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(menuItems[i].icon,color:selectedIndex==i?Colors.white: Colors.white24,),
                    Text(menuItems[i].title,style:  TextStyle(color:selectedIndex==i?Colors.white: Colors.white24),),
                  ],
                ),
              )
            ]
          ],
        ),
      ),
    );
  }
}

class Menu {
  final String title;
  final IconData icon;

  Menu({required this.title, required this.icon});
}
