import 'package:flutter/material.dart';
import 'package:ui_26_file_manager/utils/app_colors.dart';

class Folder {
  final String title;
  final String subTitle;
  final Color color;
  final IconData icon;

  Folder({required this.title, required this.subTitle, required this.color, required this.icon});
}


List<Folder>folderList=[
 Folder(title: "My Files", subTitle: "180 Folders", color: AppColors().yellowColor, icon: Icons.folder_copy_outlined),
  Folder(title: "Project", subTitle: "96 Folders", color: AppColors().pinkColor, icon: Icons.folder_copy_outlined),
  Folder(title: "Documents", subTitle: "115 File", color: AppColors().greenColor, icon: Icons.folder_copy_outlined),
  Folder(title: "My Design", subTitle: "28 Folders", color: AppColors().yellowColor, icon: Icons.folder_copy_outlined),
  Folder(title: "UI Kit", subTitle: "12 Files", color: AppColors().pinkColor, icon: Icons.folder_copy_outlined),
  Folder(title: "Agreement", subTitle: "154 Files", color: AppColors().greenColor, icon: Icons.folder_copy_outlined),
  Folder(title: "Music", subTitle: "12 Folders", color: AppColors().yellowColor, icon: Icons.folder_copy_outlined),
  Folder(title: "PDF", subTitle: "92 Folders", color: AppColors().pinkColor, icon: Icons.folder_copy_outlined),
  Folder(title: "Video Files", subTitle: "180 Folders", color: AppColors().greenColor, icon: Icons.folder_copy_outlined),
];
