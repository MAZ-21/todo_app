import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ecommerce_app/core/util/app_image.dart';
import 'package:food_ecommerce_app/core/util/app_styles.dart';

class FirstPageBody extends StatelessWidget {
  const FirstPageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(AppImages.splashImage),
        Text(
          'Todo App',
          style: Styles.helveticaTextStyleBold28(context).copyWith(
            color: Colors.white,
          ),
        ),
        SizedBox(height: 12,),
        Text(
          'The best to do list application for you',
          style: Styles.regular14(context).copyWith(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}