import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class ChartWidget extends StatelessWidget {
  const ChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      padding: const EdgeInsets.all(0.7),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xfffabc60),
                Color(0xfffabc60),
                Colors.transparent
              ])),
      child: Container(
        padding: const EdgeInsets.all(10),
        height: 170,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Theme.of(context).primaryColor),
        child: Row(
          children: [
            Expanded(
                child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  height: 110,
                  width: 120,
                  child: CircularProgressIndicator(
                      value: 0.7,
                      strokeWidth: 10,
                      color: AppColors().pinkColor,
                      strokeCap: StrokeCap.round),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  height: 150,
                  width: 160,
                  child: CircularProgressIndicator(
                      value: 0.8,
                      strokeWidth: 10,
                      color:AppColors().yellowColor,
                      strokeCap: StrokeCap.round),
                ),
              ],
            )),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(children: [
                  CircleAvatar(
                    radius: 6,
                    backgroundColor: AppColors().yellowColor,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                   Text(
                    "Phone Memory",
                    style: TextStyle(fontWeight: FontWeight.bold,color: AppColors().whiteColor),
                  ),
                ]),
                const SizedBox(
                  height: 5,
                ),
                 Text(
                  "Used 204 GB",
                  style: TextStyle(color: AppColors().whiteColor,fontSize: 12),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Free 50 GB",
                  style: TextStyle(color: AppColors().whiteColor,fontSize: 12),
                ),
                 Divider(
                  color: Colors.grey.shade600,
                ),
                Row(children: [
                  CircleAvatar(
                    radius: 6,
                    backgroundColor:AppColors().pinkColor
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Memory Card",
                    style: TextStyle(fontWeight: FontWeight.bold,color: AppColors().whiteColor),
                  ),
                ]),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Used 10 GB",
                  style: TextStyle(color: AppColors().whiteColor,fontSize: 12),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Free 54 GB",
                  style: TextStyle(color: AppColors().whiteColor,fontSize: 12),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
