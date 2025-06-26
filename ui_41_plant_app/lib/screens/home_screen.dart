import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_41_plant_app/model/data.dart';
import 'package:ui_41_plant_app/screens/detail_screen.dart';
import 'package:ui_41_plant_app/common/shimmer.dart';

import '../common/my_card_clipper.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 // bool value to handle sidebar
  bool showMenu = false;
  // List value for menu items
  List<String> menuItems = [
    "Indoor Plants",
    "Green plants",
    "Water plants",
    "Exotic plants",
  ];
  // Key to handle menu option selection
  GlobalKey menuKey = GlobalKey();
// double value for sidebar selected menu option position
  double currentItemPosition = 30;
  // bool to handle loading
  bool isLoading = true;
  @override
  void initState() {
    //calling the handleLoading
    handleLoading();
    super.initState();
  }

// This method will help to mock api call loading
  void handleLoading() {
    Future.delayed(Duration(milliseconds: 1500), () {
      setState(() {
        isLoading = !isLoading;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            surfaceTintColor: Colors.white,
            leadingWidth: 80,
            leading: GestureDetector(
              onTap: () {
                setState(() {
                  showMenu = true;
                });
              },
              child: Icon(Icons.tune, color: Theme.of(context).primaryColor),
            ),
            centerTitle: true,
            title: Text(
              "Planteria",
              style: GoogleFonts.monoton(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          /// ****** Main List  ******* /////
          body: AnimatedPadding(
            duration: Duration(milliseconds: 200),
            curve: Curves.linear,
            padding: EdgeInsets.only(
              left: showMenu ? 100 : 20,
              right: 20,
              top: 20,
              bottom: 20,
            ),
            child: Shimmer(
              child: ShimmerLoading(
                isLoading: isLoading,
                child: ListView.builder(
                  itemCount: plantList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    Plant data = plantList[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailScreen(data: data),
                          ),
                        );
                      },
                      child: Stack(
                        children: [
                          ClipPath(
                            clipper: MyCardClipper(),
                            child: Container(
                              padding: EdgeInsets.all(20),
                              height: 200,
                              width: double.infinity,
                              color: Theme.of(context).primaryColor,
                              child: Row(
                                children: [
                                  AnimatedContainer(
                                    duration: Duration(milliseconds: 200),
                                    curve: Curves.linear,
                                    width: showMenu ? 80 : 130,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          data.title,
                                          style: GoogleFonts.roboto().copyWith(
                                            color: Colors.white,
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(height: 5),

                                        Text(
                                          data.subtitle,
                                          style: GoogleFonts.roboto().copyWith(
                                            color: Colors.white,
                                            fontSize: 12,
                                          ),
                                        ),

                                        SizedBox(height: 5),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            for (
                                              int i = 0;
                                              i < data.rating;
                                              i++
                                            ) ...[
                                              const Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                                size: 18,
                                              ),
                                            ],
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            bottom: 0,
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOutQuad,
                              height: showMenu ? 180 : 200,
                              child: Hero(
                                tag: data.image,
                                child: Image.asset(data.image),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ),
        /// ****** SideBar Menu ******* /////
        AnimatedPositioned(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOutQuad,
          left: showMenu ? 0 : -100,
          child: Material(
            child: Container(
              width: 90,
              height: MediaQuery.sizeOf(context).height,
              decoration: BoxDecoration(color: Theme.of(context).primaryColor),
              child: Column(
                children: [
                  SizedBox(
                    height:
                        kToolbarHeight +
                        MediaQuery.of(context).padding.top +
                        20,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          showMenu = false;
                        });
                      },
                      child: Center(
                        child: Icon(Icons.close, color: Colors.white, size: 30),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SafeArea(
                      child: Stack(
                        children: [
                          SizedBox(
                            key: menuKey,
                            width: 90,
                            child: SingleChildScrollView(
                              child: Column(
                                spacing: 25,
                                children: [
                                  for (int i = 1; i <= menuItems.length; i++)
                                    GestureDetector(
                                      onTap: () {
                                        final keyContext = menuKey.currentContext;
                                        if (keyContext != null) {
                                          final box =
                                              keyContext.findRenderObject()
                                                  as RenderBox;
                                          double newHeight =
                                              i * (box.size.height / 4);
                                          double widgetHeight =
                                              (box.size.height / 4);

                                          setState(() {
                                            currentItemPosition =
                                                newHeight -
                                                (widgetHeight / 1.5);
                                            isLoading = true;
                                          });
                                          handleLoading();
                                        }
                                      },
                                      child: RotatedBox(
                                        quarterTurns: 3,
                                        child: SizedBox(
                                          height: 50,
                                          child: Center(
                                            child: Text(
                                              menuItems[i - 1],
                                              style: GoogleFonts.limelight(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w900,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                          AnimatedPositioned(
                            right: -30,
                            top: currentItemPosition,
                            duration: Duration(milliseconds: 200),
                            curve: Curves.easeInOutBack,

                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 10,
                                    offset: Offset(-15, 7),
                                  ),
                                ],
                              ),
                              padding: EdgeInsets.all(8),
                              alignment: Alignment.centerLeft,
                              child: CircleAvatar(
                                radius: 5,
                                backgroundColor: Theme.of(context).primaryColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
