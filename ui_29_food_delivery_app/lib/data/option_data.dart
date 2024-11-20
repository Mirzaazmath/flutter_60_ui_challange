import 'package:flutter/material.dart';

////// ***** Model Class ****** ///////
class CommonModel {
  final String title;
  final IconData icon;
  CommonModel({required this.title, required this.icon});
}

////// ***** List of Options ****** ///////
List<CommonModel> optionList = [
  CommonModel(title: "Food", icon: Icons.restaurant),
  CommonModel(title: "Grocery", icon: Icons.directions_bike),
  CommonModel(title: "Free Delivery", icon: Icons.local_shipping),
  CommonModel(title: "Dining", icon: Icons.liquor),
];