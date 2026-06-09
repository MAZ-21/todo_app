import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ecommerce_app/core/util/app_color.dart';
import 'package:food_ecommerce_app/core/util/app_image.dart';
import 'package:food_ecommerce_app/core/util/app_styles.dart';
import 'package:food_ecommerce_app/feature/signup/presentation/view/widget/sign_up.dart';

class EmailElevatedButton extends StatelessWidget {
  const EmailElevatedButton({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUp())),
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.teal,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16)
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(AppImages.message),
            SizedBox(width: 8,),
            Text(
              'Continue with email',
              style: Styles.bold18.copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}