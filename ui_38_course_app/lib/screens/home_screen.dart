import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:ui_38_course_app/constants/app_strings.dart';
import 'package:ui_38_course_app/model/course_model.dart';
import 'package:ui_38_course_app/widgets/category_section.dart';

import '../widgets/couses_widget.dart';
import '../widgets/spoken_english_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedCategory = "ALL";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        surfaceTintColor: Colors.transparent,
        leading: GestureDetector(
          onTap: (){
            ZoomDrawer.of(context)!.toggle();
          },
            child: Icon(Icons.grid_view)),
        actions: [
          Container(
            width: 200,
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
              color: Color(0xfff3f0e9),
              borderRadius: BorderRadius.circular(40),
            ),
            padding: EdgeInsets.only(left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.search_rounded),
                Text(AppStrings.search),
                CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Icon(Icons.search_rounded, color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.greeting,
              style: Theme.of(
                context,
              ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
            ),
            Text(
              AppStrings.slogan,
              style: Theme.of(context).textTheme.labelLarge,
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xfff3f0e9),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      CategorySection(
                        selectedCategory: selectedCategory,
                        onTap: (val) {
                          setState(() {
                            selectedCategory = val;
                          });
                        },
                      ),
                      SizedBox(height: 20),
                      SpokenEnglishCard(),
                      SizedBox(height: 20),
                      CoursesWidget(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        margin: EdgeInsets.only(left: 40, right: 20),
        height: 60,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:
              navMenuList
                  .map(
                    (data) => Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(data.icon, color: Colors.white),
                        Text(
                          data.title,
                          style: Theme.of(
                            context,
                          ).textTheme.bodySmall?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  )
                  .toList(),
        ),
      ),
    );
  }
}
