import 'package:flutter/material.dart';
import 'package:food_ecommerce_app/core/util/app_color.dart';
import 'package:food_ecommerce_app/core/util/app_styles.dart';

class ContinueWithLineDivider extends StatelessWidget {
  const ContinueWithLineDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Divider(
            thickness: 1,
            color: AppColor.textGrey,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'or continue with',
            style: Styles.regular14(context).copyWith(backgroundColor: AppColor.textGrey),
          ),
        ),
        Expanded(
          child: Divider(
            thickness: 1,
            color: AppColor.textGrey,
          ),
        ),
      ],
    );
  }
}