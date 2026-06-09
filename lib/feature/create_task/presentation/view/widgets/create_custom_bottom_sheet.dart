import 'package:flutter/material.dart';
import 'package:food_ecommerce_app/feature/create_task/presentation/view/widgets/calendar_icon_button.dart';
import 'package:food_ecommerce_app/feature/create_task/presentation/view/widgets/description_form_field.dart';
import 'package:food_ecommerce_app/feature/create_task/presentation/view/widgets/flag_icon_button.dart';
import 'package:food_ecommerce_app/feature/create_task/presentation/view/widgets/inbox_icon_button.dart';
import 'package:food_ecommerce_app/feature/create_task/presentation/view/widgets/send_icon_button.dart';
import 'package:food_ecommerce_app/feature/create_task/presentation/view/widgets/task_form_field.dart';
import 'package:food_ecommerce_app/feature/create_task/presentation/view/widgets/time_icon_button.dart';

class CreateTaskBottomSheet extends StatelessWidget {
  const CreateTaskBottomSheet({super.key,});
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height * .33;
    return Container(
      height: height,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      child: Column(
        children: const[
          TaskFormField(),
          DescriptionFormField(),
          Row(
            children:  [
              //inbox
              InboxIconButton(),
              SizedBox(width: 16),
              //calendar
              CalendarIconButton(),
              SizedBox(width: 16),
              //time
              TimeIconButton(),
              SizedBox(width: 16),
              //flag
              FlagIconButton(),
              Spacer(),
              SendIconButton(),
            ],
          ),
        ],
      ),
    );
  }
}

