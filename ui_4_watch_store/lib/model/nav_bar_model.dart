

import 'package:flutter/material.dart';

class NavBarModel{
  final String title;
  final IconData icon;
  NavBarModel({required this.icon, required this.title});
}
List<NavBarModel>navBarData=[
  NavBarModel(icon: Icons.home_filled,title: "Home"),
  NavBarModel(icon: Icons.shopping_bag,title: "Shop"),
  NavBarModel(icon: Icons.bookmark,title: "Bookmark"),
  NavBarModel(icon: Icons.person,title: "Profile"),
];
