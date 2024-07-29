
import 'package:flutter/material.dart';
import 'package:ui_9_expense_dashboard/custom_component/progress_ring.dart';
import '../../constants.dart';
import 'circle/neo_circle.dart';

class DataViz extends StatelessWidget {
  final bevel = 10.0;
  final blurOffset = Offset(20.0 / 2, 20.0 / 2);

  Color shadowColor = Colors.black87;
  Color backgroundColor = Constants.backgroundColor;
  Color highlightColor = Colors.white.withOpacity(0.05);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AspectRatio(
          aspectRatio: 1,
          child: Stack(
            alignment: Alignment.center,
            children: [
              NeuomorphicCircle(
                shadowColor: shadowColor,
                backgroundColor: backgroundColor,
                highlightColor: highlightColor,
                innerShadow: true,
                outerShadow: false,
              ),
              LayoutBuilder(
                  builder: (context, constraints) {
                    return Container(
                      width: constraints.maxWidth * 0.3,
                      height: constraints.maxWidth * 0.3,
                      child: NeuomorphicCircle(
                        innerShadow: false,
                        outerShadow: true,
                        highlightColor: highlightColor,
                        shadowColor: shadowColor,
                        backgroundColor: backgroundColor,
                        child: SizedBox.expand(
                          child: FittedBox(
                            fit: BoxFit.contain,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "14th",
                                style: TextStyle(
                                    color: Colors.white60,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }
              ),
              ProgressRing(progress: 0.6,)
            ],
          )),
    );
  }
}