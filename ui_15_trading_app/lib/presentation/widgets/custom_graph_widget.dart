import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../data/dashboard_data.dart';

class CustomGraphWidget extends StatelessWidget {
  const CustomGraphWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RichText(
              text: const TextSpan(
                text: '\$54.293.84 ',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 25),
                children: <TextSpan>[
                  TextSpan(
                      text: ' USD',
                      style:  TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 12)),
                ],
              ),
            ),
            const Badge(
              backgroundColor: Colors.transparent,
              padding: EdgeInsets.symmetric(horizontal: 10),
              label: Row(
                children: [
                  Text(
                    "7 Days",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(Icons.arrow_drop_down, size: 20, color: Colors.white)
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Badge(
          largeSize: 30,
          backgroundColor: Colors.greenAccent.withOpacity(0.15),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          label: const Row(
            children: [
              CircleAvatar(
                radius: 10,
                backgroundColor: Colors.greenAccent,
                child: Icon(Icons.call_made, size: 10, color: Colors.black),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "+\$1,173.42(2.1%)",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.greenAccent,
                    fontWeight: FontWeight.w900),
              ),
            ],
          ),
        ),
        const SizedBox(height: 30,),
        SizedBox(
            height: 250,
            child: SfCartesianChart(
                plotAreaBorderWidth: 0,
                borderWidth: 0,
                borderColor: Colors.transparent,
                margin: EdgeInsets.zero,
                primaryXAxis: const NumericAxis(
                  labelStyle: TextStyle(color: Colors.white),

                  majorGridLines: MajorGridLines(width: 0),
                ),
                primaryYAxis: const NumericAxis(
                  labelStyle: TextStyle(color: Colors.white),

                  majorGridLines: MajorGridLines(width: 0),
                ),
                series: <CartesianSeries>[
                  SplineSeries<ChartData, int>(
                      color:const  Color(0xff035ed7),
                      dataSource: dashboardDataList[1].dataList,
                      // Type of spline
                      splineType: SplineType.cardinal,
                      cardinalSplineTension: 0.9,
                      xValueMapper: (ChartData data, _) =>
                      data.x,
                      yValueMapper: (ChartData data, _) =>
                      data.y)
                ])),
        const SizedBox(height: 30,),
      ],
    );
  }
}
