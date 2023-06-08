import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ProgressBar extends StatelessWidget {
  final double percent;
   ProgressBar({Key? key, required this.percent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).size.width < 700;
    return   LinearPercentIndicator(
      width:isMobile ?
      MediaQuery.of(context).size.width*0.25
      : MediaQuery.of(context).size.width*0.15,
      animation: true,
      lineHeight:
      isMobile ? 7
     : 10.0,
      animationDuration: 2000,
      percent: percent,
      center: SizedBox(),
      linearStrokeCap: LinearStrokeCap.roundAll,
      progressColor: Colors.orange,
    );
  }
}
