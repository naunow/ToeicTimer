import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toeictimer/size_config.dart';
import 'package:toeictimer/widgets/timer_circle.dart';
import 'dart:async';

class PartOne extends StatefulWidget {
  final setSecond = 1800;

  @override
  _PartOneState createState() => _PartOneState();
}

class _PartOneState extends State<PartOne> {
  int lapseSecond = 0;
  void initState() {
    Timer.periodic(
      Duration(seconds: 1),
      _onTimer,
    );
    super.initState();
  }

  void _onTimer(Timer timer) {
    setState(() => lapseSecond = lapseSecond + 1);
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var min = (lapseSecond / 60).floor().toString();
    var sec = (lapseSecond % 60).toString().padLeft(2, '0');
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 40),
          child: Stack(
            alignment: Alignment.center,
            children: [
              TimerCircle(setSecond: widget.setSecond, lapseSecond: lapseSecond,),
              Text(min + ":" + sec, style: TextStyle(fontSize: 40),),
            ],
          ),
        ),
        RaisedButton.icon(
          icon: Icon(Icons.play_arrow),
          label: Text(''),
          color: Colors.orange,
          textColor: Colors.white,
          onPressed: () {},
        ),
      ],
    );
  }
}