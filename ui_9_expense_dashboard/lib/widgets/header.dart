import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "July, 2024",
                style: TextStyle(color: Colors.white24, fontSize: 18),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "Account Balance",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage("assets/profile.jpeg"),
        )
      ],
    );
  }
}