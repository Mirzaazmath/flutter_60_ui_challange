import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../data/dashboard_data.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      primary: false,
      padding: EdgeInsets.zero,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      childAspectRatio: 1.4,
      children: <Widget>[
        for (int i = 0; i < dashboardDataList.length; i++) ...[
          Container(
            height: 110,
            width: 160,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white.withOpacity(0.12)),
              borderRadius: BorderRadius.circular(10),
              color: i==0? const Color(0xff035ed7):const Color(0xff0e121a),
            ),
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  dashboardDataList[i].title,
                  style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10,),
                RichText(
                  text: TextSpan(
                    text: '${dashboardDataList[i].amount} ',
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 18),
                    children: <TextSpan>[
                      TextSpan(
                          text: ' ${dashboardDataList[i].currency}',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                              fontSize: 12)),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Badge(
                        backgroundColor: dashboardDataList[i].isGrowth
                            ? Colors.greenAccent.withOpacity(0.2)
                            : Colors.deepOrange.withOpacity(0.2),
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        label: Row(
                          children: [
                            Text(
                              dashboardDataList[i].percent,
                              style:  TextStyle(
                                  color:dashboardDataList[i].isGrowth
                                      ? Colors.greenAccent
                                      : Colors.deepOrange,
                                  fontWeight: FontWeight.w900),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Icon(
                                dashboardDataList[i].isGrowth
                                    ? Icons.arrow_upward_sharp
                                    : Icons.arrow_downward,
                                size: 10,
                                color: dashboardDataList[i].isGrowth
                                    ? Colors.greenAccent
                                    : Colors.deepOrange)
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: SizedBox(
                            child: SfCartesianChart(
                                plotAreaBorderWidth: 0,
                                borderWidth: 0,
                                borderColor: Colors.transparent,
                                margin: EdgeInsets.zero,
                                primaryXAxis: const NumericAxis(
                                  isVisible: false,
                                  majorGridLines: MajorGridLines(width: 0),
                                ),
                                primaryYAxis: const NumericAxis(
                                  isVisible: false,
                                  majorGridLines: MajorGridLines(width: 0),
                                ),
                                series: <CartesianSeries>[
                                  SplineSeries<ChartData, int>(
                                      color: dashboardDataList[i].isGrowth
                                          ? Colors.greenAccent
                                          : Colors.deepOrange,
                                      dataSource: dashboardDataList[i].dataList,
                                      // Type of spline
                                      splineType: SplineType.cardinal,
                                      cardinalSplineTension: 0.9,
                                      xValueMapper: (ChartData data, _) =>
                                          data.x,
                                      yValueMapper: (ChartData data, _) =>
                                          data.y)
                                ])),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ]
      ],
    );
  }
}
