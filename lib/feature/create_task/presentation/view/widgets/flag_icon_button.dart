import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ecommerce_app/core/util/app_image.dart';

class FlagIconButton extends StatelessWidget {
  const FlagIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: null,
      onPressed: () {},
      icon: SvgPicture.asset(AppImages.flag),
    );
  }
}