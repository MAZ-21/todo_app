import 'package:flutter/material.dart';

class SizeConfig {
  static const double designWidth = 390;
  static const double designHeight = 844;

  static double responsiveWidth(BuildContext context, double designWidth) {
    return designWidth * MediaQuery.sizeOf(context).width / designWidth;
  }

  static double responsiveHeight(BuildContext context, double designHeight) {
    return designHeight * MediaQuery.sizeOf(context).height / designHeight;
  }
}
