import 'package:flutter/material.dart';
import 'package:food_ecommerce_app/core/util/app_styles.dart';
import 'package:food_ecommerce_app/feature/create_task/data/model/task_model.dart';
import 'package:intl/intl.dart';

class TaskTimeAndDate extends StatelessWidget {
  final TaskModel task;
  const TaskTimeAndDate({super.key, required this.task});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        task.title == '' ? 'Tap plus to create a new task' : task.title,
        style: Styles.regular14(context),
      ),
      subtitle: Text(task.description ?? ''),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          task.date != null ? Text(DateFormat('dd MMM yyyy').format(task.date!)) 
          : Text(DateFormat('dd MMM yyyy').format(DateTime.now())),
          task.time != null ?
            Text(task.time!.format(context)) 
            : Text(TimeOfDay.now().format(context)) ,
        ],
      ),
      leading: task.priority != null
          ? Text(task.priority!, style: const TextStyle(fontSize: 20))
          : null,
    );
  }
}