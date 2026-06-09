import 'package:flutter/material.dart';
import 'package:food_ecommerce_app/core/util/app_image.dart';
import 'package:food_ecommerce_app/feature/splash/presentation/view/widget/page_mock_up.dart';

class SeconedPage extends StatelessWidget {
  const SeconedPage({super.key, required this.controller});
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return PageMockUp(
      controller: controller,
      image: AppImages.mockup_1,
      firstText: 'Your convenience in making a todo list',
      secondText: 'Here\'s a mobile platform that helps you create task or to list so that it can help you in every job easier and faster.',
    );
  }
}