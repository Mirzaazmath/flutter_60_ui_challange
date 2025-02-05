import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_32_grocery_app/provider/show_detail_provider.dart';
import 'package:ui_32_grocery_app/utils/showup_animation.dart';

import '../model/fruit_model.dart';
import 'home_screen.dart';

enum SampleItem { itemOne, itemTwo, itemThree }

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int selectedIndex = 0;
  List<Widget> screens = const [
    HomeScreen(),
    Center(
      child: Text(
        "Order Screen",
        style: TextStyle(color: Colors.black, fontSize: 25),
      ),
    ),
    Center(
      child: Text(
        "My Cart Screen",
        style: TextStyle(color: Colors.black, fontSize: 25),
      ),
    ),
    Center(
      child: Text(
        "More Screen",
        style: TextStyle(color: Colors.black, fontSize: 25),
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius:
                const BorderRadius.vertical(bottom: Radius.circular(50))),
        child: SafeArea(child: screens[selectedIndex]),
      ),
      bottomNavigationBar: Consumer<ShowDetailProvider>(
          builder: (BuildContext context, provider, child) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: provider.isEnableShow
                    ? ShowUpAnimation(
                        child: SizedBox(
                            height: 90,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 30, right: 30, bottom: 30),
                              child: Row(
                                children: [
                                  Text(
                                    "\$${fruitList[provider.selectedIndex].price}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22,
                                        color: Theme.of(context).primaryColor),
                                  ),
                                  Text(
                                    "/kg",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.grey.shade600),
                                  ),
                                  Expanded(
                                    child: Container(
                                        margin: const EdgeInsets.only(left: 20),
                                        width: 25,
                                        height: 40,
                                        decoration: BoxDecoration(
                                            color:
                                                Theme.of(context).primaryColor,
                                            borderRadius:
                                                BorderRadius.circular(100)),
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Add to cart",
                                          style: TextStyle(
                                              color: Theme.of(context)
                                                  .scaffoldBackgroundColor),
                                        )),
                                  )
                                ],
                              ),
                            )),
                      )
                    : SizedBox(
                        height: 90,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            for (int i = 0; i < itemList.length; i++) ...[
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedIndex = i;
                                  });
                                },
                                child: Column(
                                  children: [
                                    Icon(
                                      selectedIndex == i
                                          ? itemList[i].selectedIcon
                                          : itemList[i].icon,
                                      color: Theme.of(context).primaryColor,
                                      size: selectedIndex == i ? 30 : 24,
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      itemList[i].title,
                                      style: TextStyle(
                                          color: Theme.of(context).primaryColor,
                                          fontWeight: selectedIndex == i
                                              ? FontWeight.w700
                                              : FontWeight.w500),
                                    )
                                  ],
                                ),
                              )
                            ]
                          ],
                        ),
                      ),
              )),
    );
  }
}

class MenuItem {
  final String title;
  final IconData icon;
  final IconData selectedIcon;
  MenuItem(
      {required this.title, required this.icon, required this.selectedIcon});
}

List<MenuItem> itemList = [
  MenuItem(title: "Home", icon: Icons.home_outlined, selectedIcon: Icons.home),
  MenuItem(
      title: "Order",
      icon: Icons.storefront,
      selectedIcon: Icons.storefront_rounded),
  MenuItem(
      title: "My Cart",
      icon: Icons.local_mall_outlined,
      selectedIcon: Icons.local_mall),
  MenuItem(
      title: "More",
      icon: Icons.grid_view,
      selectedIcon: Icons.grid_view_rounded),
];
