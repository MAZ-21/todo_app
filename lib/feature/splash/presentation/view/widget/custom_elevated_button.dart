import 'package:flutter/material.dart';
import 'package:food_ecommerce_app/core/util/app_color.dart';
import 'package:food_ecommerce_app/core/util/app_styles.dart';

class ContinueElevatedButton extends StatelessWidget {
  const ContinueElevatedButton({
    super.key, 
    required this.onPressed, 
    required this.title
  });
  
  final VoidCallback onPressed;
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.teal,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16)
          ),
        ),
        child: Text(
          title,
          style: Styles.medium20.copyWith(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}