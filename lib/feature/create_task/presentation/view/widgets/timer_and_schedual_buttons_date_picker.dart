import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_ecommerce_app/core/util/app_color.dart';
import 'package:food_ecommerce_app/core/util/app_image.dart';
import 'package:food_ecommerce_app/feature/create_task/data/model/create_task.dart';
import 'package:food_ecommerce_app/feature/create_task/presentation/view_model/cubit/create_task_cubit.dart';
import 'package:food_ecommerce_app/feature/splash/presentation/view/widget/account_sign_in_button.dart';

class TimerAndSchedualButtonDatePicker extends StatelessWidget {
  const TimerAndSchedualButtonDatePicker({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
  var cubit = BlocProvider.of<CreateTaskCubit>(context);
    return Row(
      children: [
        AccountSignInButton(
          image: AppImages.timePlus,
          title: 'Add Time',
          backgroundColor: AppColor.buttonGrey,
          textColor: AppColor.teal,
          onPressed: () {
            cubit.timePicker(context);
          },
        ),
        SizedBox(width: 15.5,),
        AccountSignInButton(
          image: AppImages.timer,
          title: 'Reschedule',
          backgroundColor: AppColor.teal,
          textColor: Colors.white,
          onPressed: () {},
        ),
      ],
    );
  }
}
