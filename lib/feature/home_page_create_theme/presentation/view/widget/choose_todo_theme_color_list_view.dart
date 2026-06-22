import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_ecommerce_app/core/util/app_color.dart';
import 'package:food_ecommerce_app/feature/home_page_create_theme/presentation/view/widget/choose_todo_theme_color.dart';
import 'package:food_ecommerce_app/feature/home_page_create_theme/presentation/view/widget/true_check_icon.dart';
import 'package:food_ecommerce_app/feature/home_page_create_theme/view_model/cubit/home_page_cubit.dart';

class ChooseThemePage extends StatelessWidget {
  const ChooseThemePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChooseThemeHomePageCubit, int>(
      builder: (context, selectedIndex) {
        final cubit = context.read<ChooseThemeHomePageCubit>();
        return Column(
          children: List.generate(
            cubit.themeColors.length,
            (index) {
            return GestureDetector(
              onTap: () {
                cubit.selectTheme(index);
              },
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Row(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: TrueCheckIcon(
                        color: selectedIndex == index
                            ?  cubit.themeColors[index]
                            : Colors.transparent,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: ChooseTodoThemeColor(
                        color: cubit.themeColors[index],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        );
      },
    );
  }
}
