import 'package:flutter/material.dart';
import 'package:food_ecommerce_app/core/util/app_color.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomPageIndicator extends StatelessWidget {
  const CustomPageIndicator({
    super.key,
    required this.pageController,
    required this.isTeal,
  });

  final PageController pageController;
  final bool isTeal;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: pageController,
      count: 3,
      effect: WormEffect(
        dotHeight: 12,
        dotWidth: 12,
        dotColor: isTeal ? Colors.white: AppColor.buttonGrey,
        activeDotColor: isTeal ? Colors.white : AppColor.greenTeal,
      ),
    );
  }
}
