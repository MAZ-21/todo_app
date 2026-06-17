import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ecommerce_app/core/util/app_image.dart';
import 'package:food_ecommerce_app/feature/create_task/presentation/view_model/cubit/create_task_cubit.dart';

class TimeIconButton extends StatelessWidget {
  const TimeIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: null,
      onPressed: () => context.read<CreateTaskCubit>().timePicker(context),
      icon: SvgPicture.asset(AppImages.clock),
    );
  }
}
