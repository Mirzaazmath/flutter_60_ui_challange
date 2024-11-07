import 'package:flutter/material.dart';

class GlobalBorderContainer extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String title;
  final String subTitle;
  final bool? isSmall;
  const GlobalBorderContainer(
      {super.key,
      required this.color,
      required this.icon,
      required this.title,
      required this.subTitle,
      this.isSmall});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 170,
      padding: const EdgeInsets.all(0.7),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [color, color, Colors.transparent])),
      child: Container(
        height: 170,
        width: 170,
        padding:  EdgeInsets.all(isSmall==true?15: 25),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Theme.of(context).primaryColor),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              icon,
              color: color,
              size:isSmall==true?25: 35,
            ),
            const Spacer(),
            Text(
              title,
              style:  TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize:isSmall==true?15: 17),
            ),
            Text(
              subTitle,
              style:  TextStyle(
                color: Colors.white60,
                fontSize:isSmall==true?13: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
