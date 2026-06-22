import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ecommerce_app/core/util/app_image.dart';

class CalendarIconButton extends StatelessWidget {
  const CalendarIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: null,
      icon: SvgPicture.asset(AppImages.calendar),
      onPressed: () {
        // adding design calendar from bloc here
      },
    );
  }
}
