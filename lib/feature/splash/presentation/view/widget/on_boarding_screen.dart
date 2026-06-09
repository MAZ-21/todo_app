import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_ecommerce_app/core/util/app_color.dart';
import 'package:food_ecommerce_app/feature/splash/presentation/view/widget/custom_page_indicator.dart';
import 'package:food_ecommerce_app/feature/splash/presentation/view/widget/custom_page_view.dart';
import 'package:food_ecommerce_app/feature/splash/presentation/view/widget/skip_text_button.dart';
import 'package:food_ecommerce_app/feature/splash/presentation/view_model/cubit/splash_cubit.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key, required this.isTeal});
  final PageController pageController = PageController();
  final bool isTeal;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            color: isTeal ? AppColor.greenTeal : Colors.white,
            alignment: Alignment.centerRight,
            child: SkipTextButton(
              color: isTeal ? Colors.white : AppColor.greenTeal,
              onPressed: () {
                context.read<SplashCubit>().nextButton(context);
              },
            ),
          ),
          Expanded(
            child: CustomPageView(pageController: pageController),
          ),
          CustomPageIndicator(pageController: pageController, isTeal: isTeal),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}