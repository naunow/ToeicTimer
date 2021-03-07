import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../constants.dart';

class TimerCircle extends StatefulWidget {
  final int setSecond;
  final int lapseSecond;
  TimerCircle({this.setSecond, this.lapseSecond});

  @override
  _TimerCircleState createState() => _TimerCircleState();
}

class _TimerCircleState extends State<TimerCircle> {
  @override
  Widget build(BuildContext context) {
    final double percent = widget.lapseSecond / widget.setSecond;

    return CircularPercentIndicator(
        percent: percent > 1 ? 1 : percent,
        lineWidth: 13,
        animation: true,
        animateFromLastPercent: true,
        progressColor: _getProgressColor(percent),
        circularStrokeCap: CircularStrokeCap.round,
        radius: 250.0);
  }
}

Color _getProgressColor(double percent) {
  if (percent >= 0 && percent <= 0.25) {
    return kTimer100to75Color;
  } else if (percent > 0.25 && percent <= 0.50) {
    return kTimer75to50Color;
  } else if (percent > 0.50 && percent <= 0.75) {
    return kTimer50to25Color;
  } else {
    return kTimer25to0Color;
  }
}