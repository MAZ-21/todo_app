import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:food_ecommerce_app/core/util/app_color.dart';

class TaskFormField extends StatelessWidget {
  const TaskFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      cursorColor: AppColor.greenTeal,
      cursorWidth: 3,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: 'eg : Meeting with client',
        hintStyle: TextStyle(color: AppColor.textGrey, fontSize: 16),
      ),
    );
  }
}
