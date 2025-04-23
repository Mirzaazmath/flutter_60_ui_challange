import 'package:flutter/material.dart';

class CourseModel {
  final String title;
  final String tImage;
  final String subTitle;
  final String description;
  final int fee;
  final List<Option> options;
  final bool? isSave;
  final String thumbnail;

  CourseModel({
    required this.title,
    required this.tImage,
    required this.subTitle,
    required this.description,
    required this.fee,
    required this.options,
    this.isSave = false,
    required this.thumbnail,
  });
}

class Option {
  final IconData icon;
  final String title;

  Option({required this.icon, required this.title});
}

List<CourseModel> courseList = [
  CourseModel(
    title: "Product Design",
    tImage: "assets/teacher1.png",
    subTitle: "Course 2025 By Mirza Azmathullah Baig",
    description:
        "Product Design courses deal with the design, manufacturing, and use of products around us. These programs prepare students for a career in the product designing and manufacturing industries. Product Designing includes all stages of the process, including ideation, design, and launch",
    fee: 106,
    options: [
      Option(icon: Icons.co_present_outlined, title: "20 Live Class"),
      Option(icon: Icons.subscriptions_outlined, title: "40 Video Class"),
    ],
    thumbnail: "assets/thumbnails/thumbnail1.webp",
  ),
  CourseModel(
    title: "Web Develop",
    tImage: "assets/teacher2.png",
    subTitle: "Course 2024 By MD. Bikaram Hasan",
    description:
        "A Web Development course teaches individuals how to create, build, and maintain websites and web applications",
    fee: 88,
    options: [
      Option(icon: Icons.co_present_outlined, title: "10 Live Class"),
      Option(icon: Icons.subscriptions_outlined, title: "24 Video Class"),
    ],
    thumbnail: "assets/thumbnails/thumbnail2.jpg",
  ),
  CourseModel(
    title: "App Develop",
    tImage: "assets/teacher3.png",
    subTitle: "Course 2025 By DR. Vijay",
    description:
        "App development courses typically entail learning Java programming, Python, or other object-oriented programming languages in a development environment",
    fee: 91,
    options: [
      Option(icon: Icons.co_present_outlined, title: "20 Live Class"),
      Option(icon: Icons.subscriptions_outlined, title: "44 Video Class"),
    ],
    thumbnail: "assets/thumbnails/thumbnail3.png",
  ),
  CourseModel(
    title: "UI UX",
    tImage: "assets/teacher4.png",
    subTitle: "Course 2025 By Katherine foger",
    description:
        "A UI/UX course teaches you how to design user-friendly and visually appealing digital products, focusing on both the user interface (UI) and the user experience (UX)",
    fee: 120,
    options: [
      Option(icon: Icons.co_present_outlined, title: "30 Live Class"),
      Option(icon: Icons.subscriptions_outlined, title: "30 Video Class"),
    ],
    thumbnail: "assets/thumbnails/thumbnail4.jpg",
  ),
];

List<String> categories = [
  "ALL",
  "UI UX",
  "GRAPHIC DESIGN",
  "SOFTWARE DEVELOPMENT",
  "CLOUD",
  "TESTING",
];

List<Option>navMenuList=[
  Option(icon: Icons.home_outlined, title: "Home"),
  Option(icon: Icons.bookmark_outline, title: "Saved"),
  Option(icon: Icons.vibration_outlined, title: "Course"),
  Option(icon: Icons.library_books_outlined, title: "Library"),

];