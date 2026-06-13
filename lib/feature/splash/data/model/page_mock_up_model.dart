import 'package:flutter/material.dart';

class PageMockUpModel {
  final String image;
  final String firstText;
  final String secondText;
  final PageController controller;

  PageMockUpModel({
    required this.image,
    required this.firstText,
    required this.secondText,
    required this.controller,
  });
}
