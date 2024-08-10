
import 'package:flutter/material.dart';

class Folder{
  final String name;
  final String count;
  final IconData icon;
  final Color color;
  Folder({required this.name,required this.icon,required this.count,required this.color});
}
List<Folder>frequentlyList=[
  Folder(name: "Recent", icon: Icons.schedule, count: "12",color:const  Color(0xfffa277a)),
  Folder(name: "Favorite", icon: Icons.favorite, count: "30",color: const  Color(0xfffae669)),
  Folder(name: "Audio", icon: Icons.music_note, count: "120",color: const  Color(0xff638df7)),
  Folder(name: "Video", icon: Icons.slow_motion_video, count: "80",color: const Color(0xfff5ac56)),
];
List<Folder>allList=[
  Folder(name: "Camera", icon: Icons.folder_copy, count: "80",color:const  Color(0xfffc7752)),
  Folder(name: "Download", icon: Icons.folder_copy, count: "20",color: const  Color(0xfff8d958)),
  Folder(name: "Facebook", icon: Icons.folder_copy, count: "10",color: const  Color(0xff5d88f8)),
  Folder(name: "Camera", icon: Icons.folder_copy, count: "60",color: const Color(0xfffa277a)),
  Folder(name: "Inshot", icon: Icons.folder_copy, count: "20",color: const Color(0xff00e868)),
  Folder(name: "WhatsApp", icon: Icons.folder_copy, count: "11",color: const Color(0xfff5ac56)),
];
