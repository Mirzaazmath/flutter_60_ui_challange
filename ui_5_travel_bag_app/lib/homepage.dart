import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:ui_5_travel_bag_app/rate_us.dart';

import 'best_deals.dart';
import 'mainpage.dart';
import 'notifications.dart';

class Drawerpage extends StatefulWidget {
  const Drawerpage({Key? key}) : super(key: key);

  @override
  State<Drawerpage> createState() => _DrawerpageState();
}

class _DrawerpageState extends State<Drawerpage> {
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    //this zoomDrawer widget if from zoomdrawer package
    return ZoomDrawer(
      menuScreen: Drawer(
        currentIndex: currentindex,
        setIndex: (index) {
          setState(() {
            currentindex = index;
          });
        },
      ),
      mainScreen: setScreen(),
      borderRadius: 30,
      showShadow: true,
      angle: 0,
      menuBackgroundColor: const Color(0xff06c1cf),
      moveMenuScreen: false,
    );
  }

  Widget setScreen() {
    switch (currentindex) {
      case 0:
        return const HomePage();

      case 1:
        return const BestDeals();
      case 2:
        return const Notifications();
      case 3:
        return const Rate();
      case 4:
        return Container(
          color: Colors.greenAccent,
        );
      case 5:
        return Container(
          color: Colors.blue,
        );
      default:
        return const HomePage();
    }
  }
}

class Drawer extends StatelessWidget {
  final ValueSetter setIndex;
  final int currentIndex;
  const Drawer({super.key, required this.setIndex, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff06c1cf),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        image: AssetImage("assets/images/profile.jpeg"),
                        fit: BoxFit.fill)),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "Welcome Dev73arner!",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              drawerList(Icons.home_outlined, "Home Page", 0, context),
              drawerList(Icons.handshake_outlined, "Best Deal", 1, context),
              drawerList(
                  Icons.notifications_outlined, "Notifications", 2, context),
              drawerList(Icons.star_outline, "Rate Us", 3, context),
              drawerList(
                  Icons.error_outline_rounded, "Help Center", 4, context),
              drawerList(Icons.logout_outlined, "Sign Out", 5, context),
              //Expanded(child: Container())
            ],
          ),
        ),
      ),
    );
  }

  Widget drawerList(IconData icon, String text, int index, context) {
    return GestureDetector(
      onTap: () {
        setIndex(index);
        ZoomDrawer.of(context)!.close();
      },
      child: Container(
        padding: const EdgeInsets.only(bottom: 20, top: 20),
        child: Row(
          children: [
            Icon(
              icon,
              color: currentIndex == index ? Colors.white : Colors.white70,
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              text,
              style: TextStyle(
                  color: currentIndex == index ? Colors.white : Colors.white70,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
