import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_ecommerce_app/feature/splash/presentation/view/widget/on_boarding_screen.dart';
import 'package:food_ecommerce_app/feature/splash/presentation/view_model/cubit/splash_cubit.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashCubit(),
      child: BlocBuilder<SplashCubit, SplashState>(
        builder: (context, state) {
          final isTeal = state.pageIndex == 0;
          return Scaffold(
              backgroundColor: BlocProvider.of<SplashCubit>(context).state.pageIndex == 0 ? Colors.teal : Colors.white,
              body: OnBoardingScreen(isTeal: isTeal),
            );
        },
      ),
    );
  }
}