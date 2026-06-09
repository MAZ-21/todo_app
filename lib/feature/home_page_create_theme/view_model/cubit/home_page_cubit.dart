import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:food_ecommerce_app/core/util/app_color.dart';
import 'package:food_ecommerce_app/feature/home_page/presentation/view/home_page_view.dart';
part 'home_page_state.dart';

class ChooseThemeHomePageCubit extends Cubit<int>{
  ChooseThemeHomePageCubit() : super(0);
  final List<Color> themeColors = [
    AppColor.teal,
    AppColor.todoThemeColorBlack,
    AppColor.todoThemeColorBlue,
    AppColor.todoThemeColorRed,
  ];

  void selectTheme(int index) {
    emit(index);
  }

  Color get selectedColor => themeColors[state];
}
