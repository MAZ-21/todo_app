import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_ecommerce_app/core/util/app_color.dart';
import 'package:food_ecommerce_app/feature/create_task/presentation/view_model/cubit/create_task_cubit.dart';

class DescriptionFormField extends StatelessWidget {
  const DescriptionFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value) => context.read<CreateTaskCubit>().onDescriptionChnage(value),
      // autofocus: true,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: 'Description',
        hintStyle: TextStyle(color: AppColor.textGrey, fontSize: 16),
      ),
    );
  }
}