import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_ecommerce_app/core/util/app_color.dart';
import 'package:food_ecommerce_app/core/util/app_styles.dart';
import 'package:food_ecommerce_app/feature/create_task/presentation/view_model/cubit/create_task_cubit.dart';
import 'package:intl/intl.dart';

class TaskTimeAndDate extends StatelessWidget {
  const TaskTimeAndDate({super.key});
  @override
  Widget build(BuildContext context) {
    final String currentDate = DateFormat('EEE dd MMM yyyy').format(DateTime.now());
    return Row(
      children: [
        Text(
          'Add your task',
          style: Styles.regular12.copyWith(color: AppColor.textGrey),
        ),
        Spacer(),
        Row(
          children: [
            SizedBox(width: 4,),
            Text(
              currentDate,
              style: Styles.regular12.copyWith(color: AppColor.textGrey),
            ),
          ],
        ),
      ],
    );
  }
}
