import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_ecommerce_app/feature/home_page_create_theme/presentation/view/widget/home_page_view_body.dart';
import 'package:food_ecommerce_app/feature/home_page_create_theme/view_model/cubit/home_page_cubit.dart';
import 'package:food_ecommerce_app/feature/splash/presentation/view/splash_view.dart';

class ChooseThemeHomePageView extends StatelessWidget {
  const ChooseThemeHomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => ChooseThemeHomePageCubit(),
        child: ChooseThemeHomePageViewBody(),
      ),
    );
  }
}