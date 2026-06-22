import 'package:flutter/material.dart';
import 'package:food_ecommerce_app/core/util/size_cofig.dart';
import 'package:food_ecommerce_app/feature/create_task/presentation/view/widgets/calendar_icon_button.dart';
import 'package:food_ecommerce_app/feature/create_task/presentation/view/widgets/custom_form_field.dart';
import 'package:food_ecommerce_app/feature/create_task/presentation/view/widgets/flag_icon_button.dart';
import 'package:food_ecommerce_app/feature/create_task/presentation/view/widgets/inbox_icon_button.dart';
import 'package:food_ecommerce_app/feature/create_task/presentation/view/widgets/send_icon_button.dart';
import 'package:food_ecommerce_app/feature/create_task/presentation/view/widgets/time_icon_button.dart';
class CustomModalBottomSheet extends StatelessWidget {
  const CustomModalBottomSheet({super.key,});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.responsiveHeight(context, 204),
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      child: Column(
        children: const[
          // pass function to each from bloc  
          TaskFormField(text: 'eg : Meeting with client',),
          TaskFormField(text: 'Description'),
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

