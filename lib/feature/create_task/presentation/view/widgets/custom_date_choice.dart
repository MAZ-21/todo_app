import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ecommerce_app/core/util/app_color.dart';
import 'package:food_ecommerce_app/core/util/app_styles.dart';
import 'package:food_ecommerce_app/feature/create_task/data/model/date_picker_varity_model.dart';

class CustomDateChoice extends StatelessWidget {
  const CustomDateChoice({
    super.key,
    required this.items,
  });

  final List<DatePickerVarityModel> items;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Row(
            children: [
              SvgPicture.asset(items[index].icon),
              SizedBox(width: 12),
              Text(items[index].text, style: Styles.regular18),
              Spacer(),
              Text(
                items[index].date,
                style: Styles.regular16.copyWith(color: AppColor.textGrey),
              ),
            ],
          ),
        );
      },
    );
  }
}
