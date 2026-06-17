import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_ecommerce_app/feature/create_task/presentation/view/widgets/create_custom_bottom_sheet.dart';
import 'package:food_ecommerce_app/feature/create_task/presentation/view_model/cubit/create_task_cubit.dart';
import 'package:food_ecommerce_app/feature/create_task/presentation/view/widgets/adding_task_hint_text.dart';
import 'package:food_ecommerce_app/feature/create_task/presentation/view/widgets/task_time_and_date.dart';

class CreateTaskTodoBody extends StatelessWidget {
  const CreateTaskTodoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreateTaskCubit(),
      child: BlocConsumer<CreateTaskCubit, CreateTaskState>(
        listener: (context, state) {
          if (state is CreatedTaskSuccess) {
            Navigator.pop(context);
          } else if (state is TaskCreatedError) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.message)));
          }
        },
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              children: [
                if (state is! CreatedTaskSuccess) ...[
                  GestureDetector(
                    onTap: () => showingBottomSheet(context),
                    child: Column(
                      children: [
                        SizedBox(height: 36),
                        AddingTaskHintText(),
                        SizedBox(height: 20),
                        Divider(),
                      ],
                    ),
                  ),
                ],
                 if (state is CreatedTaskSuccess) ...[
                  TaskTimeAndDate(task: state.task,),
                  const Divider(),
                ],
              ],
            ),
          );
        },
      ),
    );
  }

  void showingBottomSheet(BuildContext context) {
    final cubit = context.read<CreateTaskCubit>();
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      builder: (context) {
        return BlocProvider.value(
          value: cubit,
          child: const CreateTaskBottomSheet(),
        );
      },
    );
  }
}
