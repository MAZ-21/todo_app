import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_ecommerce_app/core/util/app_color.dart';
import 'package:food_ecommerce_app/feature/create_task/presentation/view_model/cubit/create_task_cubit.dart';

class TaskFormField extends StatelessWidget {
  const TaskFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value) => context.read<CreateTaskCubit>().onTitleChange(value),
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
