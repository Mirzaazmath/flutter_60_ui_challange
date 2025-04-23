import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:ui_38_course_app/screens/home_screen.dart';


class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    //this zoomDrawer widget if from zoomDrawer package
    return ZoomDrawer(
      style: DrawerStyle.defaultStyle,
      menuScreen: Drawer(
        currentIndex: currentIndex,
        setIndex: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),

      mainScreen: setScreen(),
      borderRadius: 30,
      showShadow: true,
      angle: 1,
      menuBackgroundColor: Colors.black,
      moveMenuScreen: false,
    );
  }

  Widget setScreen() {
    switch (currentIndex) {
      case 0:
        return const HomeScreen();
        case 1:
        return  Container(
          color: Colors.brown,
        );
      case 2:
        return  Container(
          color: Colors.blueGrey,
        );
      case 3:
        return Container(
          color: Colors.yellow,
        );
      case 4:
        return Container(
          color: Colors.greenAccent,
        );
      case 5:
        return Container(
          color: Colors.blue,
        );
      default:
        return const HomeScreen();
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
      backgroundColor: Colors.black,
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
                        image: AssetImage("assets/profile.jpeg"),
                        fit: BoxFit.fill)),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "Hello, Dev73arner!",
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
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: SizedBox(
                  height: 5,
                  width: double.infinity,
                  child: Row(
                    children: List.generate(
                      40 ~/ 1,
                          (index) => Expanded(
                        child: Container(
                          color: index % 2 == 0 ? Colors.transparent : Colors.grey,
                          height: 2,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

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