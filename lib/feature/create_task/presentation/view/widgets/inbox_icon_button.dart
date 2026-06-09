


import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ecommerce_app/core/util/app_image.dart';

class InboxIconButton extends StatelessWidget {
  const InboxIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      onPressed: () {},
      icon: SvgPicture.asset(AppImages.inbox),
    );
  }
}
