import 'package:flutter/material.dart';
import 'package:toeictimer/constants.dart';
import 'package:toeictimer/screens/part_one.dart';
import 'package:toeictimer/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toeic timer app',
      theme: themeData(context),
      home: Home(),
      themeMode: ThemeMode.light,
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs(context).length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
            flexibleSpace: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
              TabBar(
                labelColor: kWhiteTextColor,
              indicatorColor: kIndicatorColor,
              isScrollable: true,
              labelStyle: TextStyle(
              ),
              tabs: _tabs(context),
            )
        ]),
      ),
          body: TabBarView(
            children: _tabBarViews(),
          ),
    ));
  }
}


List<Widget> _tabs(BuildContext context) {
  return [
    Tab(text: 'PART1'),
    Tab(text: 'PART2'),
    Tab(text: 'PART3'),
    Tab(text: 'PART4'),
    Tab(text: 'PART5'),
    Tab(text: 'PART6'),
    Tab(text: 'PART7'),
    Tab(text: 'Result'),
  ];
}

List<Widget> _tabBarViews() {
  return [
    PartOne(),
    Container(),
    Container(),
    Container(),
    Container(),
    Container(),
    Container(),
    Container(),
  ];
}