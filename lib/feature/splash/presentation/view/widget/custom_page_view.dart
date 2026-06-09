import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_ecommerce_app/feature/splash/presentation/view/widget/first_page.dart';
import 'package:food_ecommerce_app/feature/splash/presentation/view/widget/seconed_page.dart';
import 'package:food_ecommerce_app/feature/splash/presentation/view/widget/third_page.dart';
import 'package:food_ecommerce_app/feature/splash/presentation/view_model/cubit/splash_cubit.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      onPageChanged: (index) {
        context.read<SplashCubit>().changePage(index);
      },
      children: [
        const FirstPage(),
        SeconedPage(controller: pageController,),
        ThirdPage(controller: pageController,),
      ],
    );
  }
}
