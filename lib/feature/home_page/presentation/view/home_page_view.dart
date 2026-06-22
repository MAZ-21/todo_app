import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_ecommerce_app/feature/create_task/presentation/create_task_view.dart';
import 'package:food_ecommerce_app/feature/home_page/presentation/view/widget/custom_bottom_navigation_bar.dart';
import 'package:food_ecommerce_app/feature/home_page/view_model/home_page_cubit.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});
  
  static final List<Widget> screens = [
    CreateTaskView(),
    Center(child: Text('inbox')),
    Center(child: Text('calendar')),
    Center(child: Text('Widget')),
    Center(child: Text('paper')),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomePageCubit(),
      child: BlocBuilder<HomePageCubit, int>(
        builder: (context, currentIndex) {
          return Scaffold(
            body: CustomBottomNavigationBar(
              currentIndex: currentIndex,
              screens: screens,
              onTap: (index) {
                context.read<HomePageCubit>().changeTap(index);
              },
            ),
          );
        },
      ),
    );
  }
}
