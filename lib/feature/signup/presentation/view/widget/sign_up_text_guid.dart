import 'package:flutter/material.dart';
import 'package:food_ecommerce_app/core/util/app_color.dart';
import 'package:food_ecommerce_app/core/util/app_styles.dart';

class SignUpTextGuid extends StatelessWidget {
  const SignUpTextGuid({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('Create account', style: Styles.semiBold24(context)),
          const SizedBox(height: 8),
          Text(
            'Create your account and feel the benefits',
            textAlign: TextAlign.center,
            style: Styles.regular16(context).copyWith(color: AppColor.textGrey),
          ),
        ],
      ),
    );
  }
}
