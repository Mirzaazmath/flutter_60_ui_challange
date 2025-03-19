import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  /// AnimationController to Controller flip animation
  late final AnimationController _controller;

  /// Creating a bool Variable to handle flip effect
  bool isFlipped = false;

  void initState() {
    /// Initializing the AnimationController with duration
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
  }

  /// dispose all controllers to prevent memory leak
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade900,
      body: GestureDetector(
        onTap: () {
          if (isFlipped) {
            _controller.reverse();
            isFlipped = false;
          } else {
            _controller.forward();
            isFlipped = true;
          }
          setState(() {});
        },
        child: Center(
          child: AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.001)
                    ..rotateY(-(pi * _controller.value)),

                  /// here  we are checking the condition on  which we change our frontCard and backCard
                  child: (_controller.value < 0.5)
                      ? buildFrontCard()
                      : buildBackCard(),
                );
              }),
        ),
      ),
    );
  }

  buildFrontCard() {
    return Container(
      height: 300,
      width: 250,
      decoration: BoxDecoration(
          boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 10)],
          gradient:
              const SweepGradient(colors: [Colors.black, Colors.blueAccent]),
          borderRadius: BorderRadius.circular(20)),
      child: Stack(
        children: [
          Container(
            height: 150,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/shoes.jpg"), fit: BoxFit.fill),
                borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
          ),
          Transform(
            alignment: Alignment.centerLeft,
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001)
              ..rotateY(_controller.value),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 150,
                padding: const EdgeInsets.all(10),
                child: const Column(
                  children: [
                    Text(
                      "Get 20% Off on All Nike Shoes",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 12),
                      maxLines: 3,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  buildBackCard() {
    return Container(
      height: 300,
      width: 250,
      decoration: BoxDecoration(
          image: const DecorationImage(
              image: AssetImage("assets/nike.jpg"), fit: BoxFit.fill),
          boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 10)],
          borderRadius: BorderRadius.circular(20)),
    );
  }
}
