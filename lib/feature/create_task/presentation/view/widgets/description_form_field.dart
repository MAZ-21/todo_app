import 'package:flutter/material.dart';
import 'package:food_ecommerce_app/core/util/app_color.dart';

class DescriptionFormField extends StatelessWidget {
  const DescriptionFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // autofocus: true,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: 'Description',
        hintStyle: TextStyle(color: AppColor.textGrey, fontSize: 16),
      ),
    );
  }
}