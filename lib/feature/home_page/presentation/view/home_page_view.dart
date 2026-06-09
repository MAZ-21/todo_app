import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_ecommerce_app/feature/home_page/presentation/view/widget/custom_bottom_navigation_bar.dart';
import 'package:food_ecommerce_app/feature/home_page/view_model/home_page_cubit.dart';
import 'package:food_ecommerce_app/feature/create_task/presentation/view/widgets/home_page_create_task_view.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});
  static final List<Widget> screens = [
    HomePageCreateTaskView(),
    Center(child: Text('inbox')),
    Center(child: Text('calendar')),
    Center(child: Text('inbox')),
    Center(child: Text('paper')),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomePageCubit(),
      child: BlocBuilder<HomePageCubit, int>(
        builder: (context, currentIndex) {
          return Scaffold(
            body: IndexedStack(index: currentIndex, children: screens),
            bottomNavigationBar: CustomBottomNavigationBar(
              currentIndex: currentIndex,
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
