import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ecommerce_app/core/util/app_color.dart';
import 'package:food_ecommerce_app/core/util/app_image.dart';
import 'package:food_ecommerce_app/core/util/app_styles.dart';
import 'package:food_ecommerce_app/core/util/size_cofig.dart';
import 'package:food_ecommerce_app/feature/create_task/presentation/view/widgets/app_bar_leading_text.dart';
import 'package:food_ecommerce_app/feature/create_task/presentation/view/widgets/create_initial_task.dart';

class CreateTaskViewBody extends StatelessWidget {
  const CreateTaskViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: <Widget>[
            AppBarLeadingText(),
            SizedBox(height: 28,),
            CreateInitialTask(),
          ],
        ),
      ),
    );
  }
}



