import 'package:flutter/material.dart';
import 'package:food_ecommerce_app/constants.dart';
import 'package:food_ecommerce_app/core/util/size_cofig.dart';

abstract class AppStyles {
  AppStyles({required this.context});
  final BuildContext context;

  static regular14(BuildContext context) {}
}

class Styles extends AppStyles {
  Styles(BuildContext context) : super(context: context);

  static TextStyle helveticaTextStyleBold28(BuildContext context) {
    return TextStyle(
      fontSize: SizeConfig.responsiveText(context, 28),
      fontWeight: FontWeight.w700,
      fontFamily: 'helveticaFont',
    );
  }

  // Size 28
  static TextStyle regular28(BuildContext context) {
    return TextStyle(
      fontFamily: sfProFont,
      fontSize: SizeConfig.responsiveText(context, 28),
    );
  }

  static TextStyle semiBold28(BuildContext context) {
    return TextStyle(
      fontFamily: sfProFont,
      fontSize: SizeConfig.responsiveText(context, 28),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle bold28(BuildContext context) {
    return TextStyle(
      fontFamily: sfProFont,
      fontSize: SizeConfig.responsiveText(context, 28),
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle medium28(BuildContext context) {
    return TextStyle(
      fontFamily: sfProFont,
      fontSize: SizeConfig.responsiveText(context, 28),
      fontWeight: FontWeight.w500,
    );
  }

  // Size 26
  static TextStyle regular26(BuildContext context) {
    return TextStyle(
      fontFamily: sfProFont,
      fontSize: SizeConfig.responsiveText(context, 26),
    );
  }

  static TextStyle semiBold26(BuildContext context) {
    return TextStyle(
      fontFamily: sfProFont,
      fontSize: SizeConfig.responsiveText(context, 26),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle bold26(BuildContext context) {
    return TextStyle(
      fontFamily: sfProFont,
      fontSize: SizeConfig.responsiveText(context, 26),
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle medium26(BuildContext context) {
    return TextStyle(
      fontFamily: sfProFont,
      fontSize: SizeConfig.responsiveText(context, 26),
      fontWeight: FontWeight.w500,
    );
  }

  // Size 24
  static TextStyle regular24(BuildContext context) {
    return TextStyle(
      fontFamily: sfProFont,
      fontSize: SizeConfig.responsiveText(context, 24),
    );
  }

  static TextStyle semiBold24(BuildContext context) {
    return TextStyle(
      fontFamily: sfProFont,
      fontSize: SizeConfig.responsiveText(context, 24),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle bold24(BuildContext context) {
    return TextStyle(
      fontFamily: sfProFont,
      fontSize: SizeConfig.responsiveText(context, 24),
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle medium24(BuildContext context) {
    return TextStyle(
      fontFamily: sfProFont,
      fontSize: SizeConfig.responsiveText(context, 24),
      fontWeight: FontWeight.w500,
    );
  }

  // Size 22
  static TextStyle regular22(BuildContext context) {
    return TextStyle(
      fontFamily: sfProFont,
      fontSize: SizeConfig.responsiveText(context, 22),
    );
  }

  static TextStyle semiBold22(BuildContext context) {
    return TextStyle(
      fontFamily: sfProFont,
      fontSize: SizeConfig.responsiveText(context, 22),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle bold22(BuildContext context) {
    return TextStyle(
      fontFamily: sfProFont,
      fontSize: SizeConfig.responsiveText(context, 22),
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle medium22(BuildContext context) {
    return TextStyle(
      fontFamily: sfProFont,
      fontSize: SizeConfig.responsiveText(context, 22),
      fontWeight: FontWeight.w500,
    );
  }

  // Size 20
  static TextStyle regular20(BuildContext context) {
    return TextStyle(
      fontFamily: sfProFont,
      fontSize: SizeConfig.responsiveText(context, 20),
    );
  }

  static TextStyle semiBold20(BuildContext context) {
    return TextStyle(
      fontFamily: sfProFont,
      fontSize: SizeConfig.responsiveText(context, 20),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle bold20(BuildContext context) {
    return TextStyle(
      fontFamily: sfProFont,
      fontSize: SizeConfig.responsiveText(context, 20),
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle medium20(BuildContext context) {
    return TextStyle(
      fontFamily: sfProFont,
      fontSize: SizeConfig.responsiveText(context, 20),
      fontWeight: FontWeight.w500,
    );
  }

  // Size 18
  static TextStyle regular18(BuildContext context) {
    return TextStyle(
      fontFamily: sfProFont,
      fontSize: SizeConfig.responsiveText(context, 18),
    );
  }

  static TextStyle semiBold18(BuildContext context) {
    return TextStyle(
      fontFamily: sfProFont,
      fontSize: SizeConfig.responsiveText(context, 18),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle bold18(BuildContext context) {
    return TextStyle(
      fontFamily: sfProFont,
      fontSize: SizeConfig.responsiveText(context, 18),
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle medium18(BuildContext context) {
    return TextStyle(
      fontFamily: sfProFont,
      fontSize: SizeConfig.responsiveText(context, 18),
      fontWeight: FontWeight.w500,
    );
  }

  // Size 16
  static TextStyle regular16(BuildContext context) {
    return TextStyle(
      fontFamily: sfProFont,
      fontSize: SizeConfig.responsiveText(context, 16),
    );
  }

  static TextStyle semiBold16(BuildContext context) {
    return TextStyle(
      fontFamily: sfProFont,
      fontSize: SizeConfig.responsiveText(context, 16),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle bold16(BuildContext context) {
    return TextStyle(
      fontFamily: sfProFont,
      fontSize: SizeConfig.responsiveText(context, 16),
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle medium16(BuildContext context) {
    return TextStyle(
      fontFamily: sfProFont,
      fontSize: SizeConfig.responsiveText(context, 16),
      fontWeight: FontWeight.w500,
    );
  }

  // Size 14
  static TextStyle regular14(BuildContext context) {
    return TextStyle(
      fontFamily: sfProFont,
      fontSize: SizeConfig.responsiveText(context, 14),
    );
  }

  static TextStyle semiBold14(BuildContext context) {
    return TextStyle(
      fontFamily: sfProFont,
      fontSize: SizeConfig.responsiveText(context, 14),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle bold14(BuildContext context) {
    return TextStyle(
      fontFamily: sfProFont,
      fontSize: SizeConfig.responsiveText(context, 14),
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle medium14(BuildContext context) {
    return TextStyle(
      fontFamily: sfProFont,
      fontSize: SizeConfig.responsiveText(context, 14),
      fontWeight: FontWeight.w500,
    );
  }

  // Size 12
  static TextStyle regular12(BuildContext context) {
    return TextStyle(
      fontFamily: sfProFont,
      fontSize: SizeConfig.responsiveText(context, 12),
    );
  }

  static TextStyle semiBold12(BuildContext context) {
    return TextStyle(
      fontFamily: sfProFont,
      fontSize: SizeConfig.responsiveText(context, 12),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle bold12(BuildContext context) {
    return TextStyle(
      fontFamily: sfProFont,
      fontSize: SizeConfig.responsiveText(context, 12),
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle medium12(BuildContext context) {
    return TextStyle(
      fontFamily: sfProFont,
      fontSize: SizeConfig.responsiveText(context, 12),
      fontWeight: FontWeight.w500,
    );
  }

  // Size 10
  static TextStyle regular10(BuildContext context) {
    return TextStyle(
      fontFamily: sfProFont,
      fontSize: SizeConfig.responsiveText(context, 10),
    );
  }

  static TextStyle semiBold10(BuildContext context) {
    return TextStyle(
      fontFamily: sfProFont,
      fontSize: SizeConfig.responsiveText(context, 10),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle bold10(BuildContext context) {
    return TextStyle(
      fontFamily: sfProFont,
      fontSize: SizeConfig.responsiveText(context, 10),
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle medium10(BuildContext context) {
    return TextStyle(
      fontFamily: sfProFont,
      fontSize: SizeConfig.responsiveText(context, 10),
      fontWeight: FontWeight.w500,
    );
  }
}