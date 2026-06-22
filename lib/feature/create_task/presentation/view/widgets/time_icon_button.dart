import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ecommerce_app/core/util/app_image.dart';

class TimeIconButton extends StatelessWidget {
  const TimeIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: null,
      onPressed: () {},
      icon: SvgPicture.asset(AppImages.clock),
    );
  }
}
