import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ecommerce_app/core/util/app_image.dart';

class InboxIconButton extends StatelessWidget {
  const InboxIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      //transfer data from task screen view to inbox screen view from here
      onPressed: () {},
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      icon: SvgPicture.asset(AppImages.inbox),
    );
  }
}
