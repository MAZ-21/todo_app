import 'package:flutter/material.dart';
import 'package:food_ecommerce_app/core/util/app_color.dart';
import 'package:food_ecommerce_app/feature/splash/presentation/view/widget/first_page_body.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: AppColor.greenTeal,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: FirstPageBody(), 
            ),
          ],
        ),
      ),
    );
  }
}

