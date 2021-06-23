import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double ScreenWidth;
  static double ScreenHeight;
  static double DefaultSize;
  static Orientation orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    ScreenWidth = _mediaQueryData.size.width;
    ScreenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

// get proportional height
double GetProportionateScreenHeight(double inputHeight) {
  double ScreenHeight = SizeConfig.ScreenHeight;
  // 3040px Height pixel 4 XL
  return (inputHeight / 3040.0) * ScreenHeight;
}

//get proportional width
double GetProportionateScreenWidth(double inputWidth) {
  double ScreenWidth = SizeConfig.ScreenWidth;
  // 1440px Width pixel 4 XL
  return (inputWidth / 1440.0) * ScreenWidth;
}
