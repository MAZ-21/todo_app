
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ecommerce_app/core/util/app_color.dart';
import 'package:food_ecommerce_app/core/util/app_image.dart';
import 'package:food_ecommerce_app/core/util/app_styles.dart';

class CreateTaskListTile extends StatelessWidget {
  const CreateTaskListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Today', 
        style: Styles.semiBold24(context),
      ),
      subtitle: Text(
        'Best platform for creating to-do lists',
        style: Styles.regular14(context).copyWith(color: AppColor.textGrey),
      ),
      trailing: SvgPicture.asset(AppImages.setting),
    );
  }
}
