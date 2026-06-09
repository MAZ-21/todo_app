import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_ecommerce_app/feature/create_task/presentation/view/widgets/home_page_create_task_body.dart';
import 'package:food_ecommerce_app/feature/home_page_create_theme/view_model/cubit/home_page_cubit.dart';

class HomePageCreateTaskView extends StatelessWidget {
  const HomePageCreateTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ChooseThemeHomePageCubit>(
      create: (context) => ChooseThemeHomePageCubit(),
      child:  const HomePageCreateTaskBody(),
    );
  }
}
