import 'package:flutter/material.dart';

class SizeConfig {
  static const double figmaWidth = 390;
  static const double figmaHeight = 844;

  static double responsiveWidth(BuildContext context, double designWidth) {
    return designWidth * MediaQuery.sizeOf(context).width / figmaWidth;
  }

  static double responsiveHeight(BuildContext context, double designHeight) {
    return designHeight * MediaQuery.sizeOf(context).height / figmaHeight;
  }
}
