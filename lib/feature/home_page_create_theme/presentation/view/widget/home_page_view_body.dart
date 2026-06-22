import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_ecommerce_app/core/util/app_styles.dart';
import 'package:food_ecommerce_app/feature/home_page/presentation/view/home_page_view.dart';
import 'package:food_ecommerce_app/feature/home_page_create_theme/presentation/view/widget/choose_todo_theme_color_list_view.dart';
import 'package:food_ecommerce_app/feature/home_page_create_theme/view_model/cubit/home_page_cubit.dart';
import 'package:food_ecommerce_app/feature/splash/presentation/view/widget/custom_elevated_button.dart';

class ChooseThemeHomePageViewBody extends StatelessWidget {
  const ChooseThemeHomePageViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Create to do list', style: Styles.semiBold24(context)),
              SizedBox(height: 8),
              Text(
                'Choose your to do list color theme: ',
                style: Styles.regular14(context),
              ),
              SizedBox(height: 32),
              Expanded(child: ChooseThemePage()),
              ContinueElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => HomePageView()),
                  );
                },
                title: 'Open Todoapp',
              ),
              SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
