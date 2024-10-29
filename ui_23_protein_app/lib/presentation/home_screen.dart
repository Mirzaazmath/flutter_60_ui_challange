import 'package:flutter/material.dart';

import '../widgets/animated_Slider_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> catList = ["GM", "BSN", "LAB"];
  int selectIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Category",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.black,
            child: Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.black,
              child: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            //// **** Category List ****/////
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              for (int i = 0; i < catList.length; i++) ...[
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectIndex = i;
                    });
                  },
                  child: Container(
                    height: 35,
                    width: 70,
                    margin: const EdgeInsets.only(left: 15),
                    decoration: BoxDecoration(
                        color: selectIndex == i
                            ? Colors.black
                            : const Color(0xffaeaeae),
                        borderRadius: BorderRadius.circular(30)),
                    alignment: Alignment.center,
                    child: Text(
                      catList[i],
                      style: TextStyle(
                          color:
                              selectIndex == i ? Colors.white : Colors.black),
                    ),
                  ),
                )
              ]
            ]),
            const SizedBox(
              height: 20,
            ),
            //// **** AnimatedSliderWidget  ****/////
            const Expanded(child: AnimatedSliderWidget())
          ],
        ),
      ),
    );
  }
}
