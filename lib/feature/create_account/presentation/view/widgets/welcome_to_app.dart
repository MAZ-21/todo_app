import 'package:flutter/material.dart';
import 'package:food_ecommerce_app/core/util/app_color.dart';
import 'package:food_ecommerce_app/core/util/app_styles.dart';

class WelcomToApp extends StatelessWidget {
  const WelcomToApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Welcome to',
          style: Styles.semiBold26(context),
        ),
        Text(
          ' Todoapp',
          style: Styles.semiBold26(context).copyWith(
            color: AppColor.teal
          ),
        ),
      ],
    );
  }
}