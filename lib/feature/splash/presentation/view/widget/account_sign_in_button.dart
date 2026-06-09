import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ecommerce_app/core/util/app_color.dart';
import 'package:food_ecommerce_app/core/util/app_styles.dart';

class AccountSignInButton extends StatelessWidget {
  const AccountSignInButton({
    super.key,
    required this.image,
    required this.title,
    required this.onPressed,
    required this.textColor,
    required this.backgroundColor,
  });
  final String image;
  final String title;
  final VoidCallback onPressed;
  final Color textColor;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(image, height: 26, width: 26),
            SizedBox(width: 13),
            Text(title, style: Styles.medium18.copyWith(color: textColor)),
          ],
        ),
      ),
    );
  }
}
