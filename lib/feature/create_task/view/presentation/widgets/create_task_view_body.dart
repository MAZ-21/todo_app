import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ecommerce_app/core/util/app_color.dart';
import 'package:food_ecommerce_app/core/util/app_image.dart';
import 'package:food_ecommerce_app/core/util/app_styles.dart';

class CreateTaskViewBody extends StatelessWidget {
  const CreateTaskViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: Text(
            'Today',
            style: Styles.semiBold24(context),
          ),
          subtitle: Text(
            'Best platform for creating to-do lists',
            style: Styles.regular14(context).copyWith(color: AppColor.textGrey),
          ),
          trailing: IconButton(
            icon: SvgPicture.asset(AppImages.setting),
            //add action here
            onPressed:(){}
          ),
        )
      ],
    );
  }
}