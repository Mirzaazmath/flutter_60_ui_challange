import 'package:flutter/material.dart';
import 'package:ui_38_course_app/model/course_model.dart';

class DetailScreen extends StatelessWidget {
  final CourseModel data;
  const DetailScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        surfaceTintColor: Colors.transparent,
        actions: [
          CircleAvatar(
            backgroundColor: Colors.black,
            child: Icon(Icons.bookmark_outline, color: Colors.white),
          ),
          SizedBox(width: 20),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: AssetImage(data.thumbnail),
                  fit: BoxFit.fill,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 20,
                    offset: Offset(5, 10),
                  ),
                ],
              ),
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: 24,
                backgroundColor: Colors.black54,
                child: Icon(Icons.play_arrow, color: Colors.black, size: 30),
              ),
            ),
            Spacer(),
            RichText(
              text: TextSpan(
                text: data.title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: ' ${data.subTitle}',
                    style: TextStyle(fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
            Spacer(),
            Text(data.description),
            Spacer(),
            Wrap(
              alignment: WrapAlignment.center,
              spacing: 10,
              children:
                  data.options
                      .map(
                        (item) => SizedBox(
                          width: 150,
                          child: ListTile(
                            contentPadding: EdgeInsets.zero,
                            horizontalTitleGap: 5,
                            leading: CircleAvatar(
                              backgroundColor: Colors.black,
                              radius: 18,
                              child: Icon(
                                item.icon,
                                color: Colors.white,
                                size: 18,
                              ),
                            ),
                            title: Text(
                              item.title,
                              style: Theme.of(context).textTheme.labelLarge
                                  ?.copyWith(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      )
                      .toList(),
            ),
            Spacer(),
            SizedBox(
              height: 5,
              width: double.infinity,
              child: Row(
                children: List.generate(
                  40 ~/ 1,
                  (index) => Expanded(
                    child: Container(
                      color: index % 2 == 0 ? Colors.transparent : Colors.grey,
                      height: 2,
                    ),
                  ),
                ),
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Fee",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "\$${data.fee}",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Spacer(),
            Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(30),
              ),
              alignment: Alignment.center,
              child: Text(
                "Enroll Now",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
