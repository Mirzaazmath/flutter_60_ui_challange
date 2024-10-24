import 'package:flutter/material.dart';
import 'package:ui_21_flight_booking_ui/widgets/flip_switch.dart';
import 'package:ui_21_flight_booking_ui/widgets/show_up_animation.dart';

import '../data/flight_data.dart';
import '../widgets/arc_painter.dart';
import '../widgets/flight_card_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool loading = false;
  void reload(){
    Future.delayed(const Duration(milliseconds: 100), () {

      setState(() {
       loading=false;
      });

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        centerTitle: true,
        title: FlipSwitchWidget(
          color: Theme.of(context).primaryColor,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          leftLabel: "One Way",
          rightLabel: "Round Trip",
          onUpdate: () {
            setState(() {
              loading = true;
            });
            reload();
          },
        ),
        actions: [
          Icon(
            Icons.settings,
            size: 40,
            color: Theme.of(context).primaryColor,
          ),
          const SizedBox(
            width: 20,
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            loading?const SizedBox():   ShowUpAnimation(
              delay: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 30,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xffdfdfdf)),
                        alignment: Alignment.center,
                        child: const Text(
                          "From",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Text(
                        "WAW",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 38),
                      ),
                      const Text(
                        "Warsaw",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.grey,
                            fontSize: 18),
                      ),
                    ],
                  ),
                  Expanded(
                    child: CustomPaint(
                      size: const Size(10, 10),
                      painter: ArcPainter(),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: 30,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xffdfdfdf)),
                        alignment: Alignment.center,
                        child: const Text(
                          "To",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Text(
                        "PRG",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 38),
                      ),
                      const Text(
                        "Pargue",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.grey,
                            fontSize: 18),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            loading?const SizedBox():      ShowUpAnimation(
              delay: 200,
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: flightDataList.length,
                  itemBuilder: (context, index) {
                    return FlightCardWidget(
                      isEven: index.isEven,
                      data: flightDataList[index],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
