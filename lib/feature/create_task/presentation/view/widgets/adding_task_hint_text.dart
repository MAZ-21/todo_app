import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ecommerce_app/core/util/app_image.dart';
import 'package:food_ecommerce_app/core/util/app_styles.dart';

class AddingTaskHintText extends StatelessWidget {
  const AddingTaskHintText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(AppImages.plus),
        SizedBox(width: 12,),
        Text(
          'Tap plus to create a new task',
          style: Styles.medium16,
        ),
      ],
    );
  }
}
