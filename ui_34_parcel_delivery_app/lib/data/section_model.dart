import 'package:flutter/material.dart';

class SectionModel {
  final String name;
  final IconData icon;
  SectionModel({required this.name, required this.icon});
}
List<SectionModel>sectionList=[
  SectionModel(name: "Price", icon: Icons.credit_card_outlined),
  SectionModel(name: "Point", icon: Icons.location_on_outlined),
  SectionModel(name: "News", icon: Icons.newspaper_outlined),
  SectionModel(name: "Info", icon: Icons.info_outline),
];
