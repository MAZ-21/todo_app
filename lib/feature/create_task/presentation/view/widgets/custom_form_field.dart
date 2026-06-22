import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_ecommerce_app/core/util/app_color.dart';

class TaskFormField extends StatelessWidget {
  const TaskFormField({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
    //adding bloc funciton heree
      autofocus: false,
      cursorColor: AppColor.greenTeal,
      cursorWidth: 3,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: text,
        hintStyle: TextStyle(color: AppColor.textGrey, fontSize: 16),
      ),
    );
  }
}
