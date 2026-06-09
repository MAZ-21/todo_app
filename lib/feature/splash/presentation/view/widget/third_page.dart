import 'package:flutter/material.dart';
import 'package:food_ecommerce_app/core/util/app_image.dart';
import 'package:food_ecommerce_app/feature/splash/presentation/view/widget/page_mock_up.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key, required this.controller});
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return PageMockUp(
      controller: controller,
      image: AppImages.mockup_2,
      firstText: 'Find the practicality in making your todo list',
      secondText: 'Easy-to-understand user interface  that makes you more comfortable when you want to create a task or to do list, Todyapp can also improve productivity',
    );
  }
}