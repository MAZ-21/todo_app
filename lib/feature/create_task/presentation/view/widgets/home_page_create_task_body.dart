import 'package:flutter/material.dart';
import 'package:food_ecommerce_app/feature/create_task/presentation/view/widgets/create_task_list_tile.dart';
import 'package:food_ecommerce_app/feature/create_task/presentation/view/widgets/create_task_todo.dart';

class HomePageCreateTaskBody extends StatelessWidget {
  const HomePageCreateTaskBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            CreateTaskListTile(),
            SizedBox(height: 30,),
            CreateTaskTodo(),
          ],
        ),
      ),
    );
  }
}