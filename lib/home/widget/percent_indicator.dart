import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class PercentIndicator extends StatelessWidget {
  final percent;
  const PercentIndicator({Key? key, required this.percent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 60,
      percent: percent,
      center: Text('${percent * 100}%'),
      progressColor: Colors.grey,
      lineWidth: 10,
    );
  }
}
