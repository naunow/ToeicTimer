import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double defaultSize;
  static Orientation orientation;
  static double appBarHeight;
  static double statusBarHeight;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
    appBarHeight = AppBar().preferredSize.height;
    statusBarHeight = 24;
  }
}

double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;

  return (inputHeight / 731.0) * screenHeight;
}

double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;

  return (inputWidth / 411.0) * screenWidth;
}