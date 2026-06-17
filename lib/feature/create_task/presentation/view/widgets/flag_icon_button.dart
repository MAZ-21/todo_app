import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ecommerce_app/core/util/app_image.dart';
import 'package:food_ecommerce_app/feature/create_task/presentation/view_model/cubit/create_task_cubit.dart';

class FlagIconButton extends StatelessWidget {
  const FlagIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details){
        showListPriorityTask(context, details);
      },
      child: SvgPicture.asset(AppImages.flag),
    );
  }
  void showListPriorityTask(BuildContext context, TapDownDetails details) async{
    final selectedValue = await showMenu<String>(
      context: context,
      position: RelativeRect.fromLTRB(
        details.globalPosition.dx,
        details.globalPosition.dy,
        details.globalPosition.dx,
        details.globalPosition.dy,
      ),
      items: [
        PopupMenuItem(
          value: '💥 Priority task 1',
          child: Text(
            '💥 Priority task 1',
            style: TextStyle(color: Colors.red),
          ),
        ),
        PopupMenuItem(
          value: '💪 Priority task 2',
          child: Text(
            '💪 Priority task 2',
            style: TextStyle(color: Colors.teal),
          ),
        ),
        PopupMenuItem(
          value: '👌 Priority task 3',
          child: Text(
            '👌 Priority task 3',
            style: TextStyle(color: Colors.blue),
          ),
        ),
        PopupMenuItem(
          value: '✌️ Priority task 4',
          child: Text(
            '✌️ Priority task 4',
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ],
    );
    if(selectedValue != null){
      context.read<CreateTaskCubit>().updateFlag(selectedValue);
    }
  }
}