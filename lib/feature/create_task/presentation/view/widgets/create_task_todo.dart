import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_ecommerce_app/core/util/size_cofig.dart';
import 'package:food_ecommerce_app/feature/create_task/presentation/view/widgets/create_task_todo_body.dart';
import 'package:food_ecommerce_app/feature/home_page_create_theme/view_model/cubit/home_page_cubit.dart';

class CreateTaskTodo extends StatelessWidget {
  const CreateTaskTodo({super.key});
  @override
  Widget build(BuildContext context) {
  final cubit = context.watch<ChooseThemeHomePageCubit>();
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Stack(
        children: [
          Container(
            height: SizeConfig.responsiveHeight(context, 148),
            width: SizeConfig.responsiveWidth(context, 327),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: CreateTaskTodoBody(),
          ),
          Container(
            height: SizeConfig.responsiveHeight(context, 36),
            width:SizeConfig.responsiveWidth(context, 327),
            decoration: BoxDecoration(
              color: cubit.selectedColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
            ),
          ),
        ],
      ),
    );
  }
}