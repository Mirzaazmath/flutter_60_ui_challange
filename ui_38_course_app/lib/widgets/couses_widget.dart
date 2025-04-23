import 'package:flutter/material.dart';
import 'package:ui_38_course_app/screens/detail_screen.dart';

import '../model/course_model.dart';
class CoursesWidget  extends StatelessWidget {
  const CoursesWidget ({super.key});

  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: courseList.length,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        mainAxisExtent: 220, // Set fixed height for each item
      ),
      itemBuilder: (context, index) {
        final data = courseList[index];
        return GestureDetector(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailScreen(data: data)));
          },
          child: Container(
            padding: EdgeInsets.only(top: 15,left: 15,right: 15),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        data.title,
                        style: Theme.of(
                          context,
                        ).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.black26,
                      child: Icon(
                        Icons.bookmark_outline,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Expanded(child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10,right: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("Watch\nDemo",style: Theme.of(context).textTheme.bodySmall?.copyWith(fontWeight: FontWeight.bold),),
                          CircleAvatar(
                            backgroundColor: Colors.black,
                            child: Icon(
                              Icons.play_arrow,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Expanded(child: SizedBox(
                      height:140,
                      child: Image.asset(data.tImage,fit: BoxFit.cover,),
                    ))

                  ],))
              ],
            ),
          ),
        );
      },
    );
  }
}
