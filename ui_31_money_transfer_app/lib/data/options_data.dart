import 'package:flutter/material.dart';

class Option {
  final IconData icon;
  final String title;
  final Color color;

  Option({required this.icon, required this.title, required this.color});
}
List<Option>optionList=[
  Option(icon: Icons.send, title:"Send", color: const Color(0xff37be33)),
  Option(icon: Icons.wallet, title:"Request", color: const Color(0xffe5383b)),
  Option(icon: Icons.more_horiz, title:"More", color: const Color(0xfff89d1d))
];
