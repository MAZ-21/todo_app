import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:food_ecommerce_app/core/util/app_color.dart';

class TaskFormField extends StatelessWidget {
  const TaskFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        showListPriorityTask(context, details);
      },
      child: TextFormField(
        autofocus: false,
        cursorColor: AppColor.greenTeal,
        cursorWidth: 3,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'eg : Meeting with client',
          hintStyle: TextStyle(color: AppColor.textGrey, fontSize: 16),
        ),
      ),
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
      log(selectedValue);
    }
  }
}
