import 'package:flutter/material.dart';

import '../model/course_model.dart';
class CategorySection extends StatelessWidget {
  final String selectedCategory;
  final Function(String) onTap;
  const CategorySection({super.key,required this.selectedCategory,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 50,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children:
          categories
              .map(
                (item) => InkWell(
                  onTap: (){
                    onTap(item);
                  },
                  child: Container(
                margin: EdgeInsets.only(left: 10),
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color:
                  selectedCategory == item
                      ? Colors.black
                      : Theme.of(
                    context,
                  ).primaryColor,
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                ),
                child: Text(
                  item,
                  style: TextStyle(
                    color:
                    selectedCategory == item
                        ? Colors.white
                        : Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          )
              .toList(),
        ),
      ),
    );
  }
}
