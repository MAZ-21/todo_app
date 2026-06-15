import 'package:flutter/material.dart';
import 'package:food_ecommerce_app/core/util/app_styles.dart';

class SkipTextButton extends StatelessWidget {
  const SkipTextButton({super.key, required this.onPressed, required this.color});
  final VoidCallback onPressed;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        'Skip',
        style: Styles.medium16(context).copyWith(
          color: color,
        ),
      ),
    );
  }
}