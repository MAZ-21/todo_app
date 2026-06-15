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

  // selecting factor
  // min & max font size
  static double responsiveText(BuildContext context, double designFontSize) {
    double scaleFactor = getScaleFactor(context);
    double responsiveFontSize = designFontSize * scaleFactor;
    double  lowerLimit = designFontSize * 0.8;
    double  upperLimit = designFontSize * 1.2;
    return responsiveFontSize.clamp(lowerLimit, upperLimit);
    // return designFontSize * MediaQuery.sizeOf(context).width / figmaWidth;
  }
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < 600) {
    return width / 400;
  } else {
    return width / 700;
  }
}
