import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ecommerce_app/core/util/app_image.dart';

class ChooseTodoThemeColor extends StatelessWidget {
  const ChooseTodoThemeColor({super.key, required this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            AspectRatio(
              aspectRatio: 327 / 36,
              child: Container(
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                  ),
                ),
              ),
            ),
            AspectRatio(
              aspectRatio: 327 / 68,
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: SvgPicture.asset(AppImages.toDoBody),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
