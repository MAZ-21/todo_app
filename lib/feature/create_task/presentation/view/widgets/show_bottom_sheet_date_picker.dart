import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ecommerce_app/core/util/app_color.dart';
import 'package:food_ecommerce_app/core/util/app_image.dart';
import 'package:food_ecommerce_app/core/util/app_styles.dart';
import 'package:food_ecommerce_app/feature/create_task/data/model/date_picker_varity_model.dart';
import 'package:food_ecommerce_app/feature/create_task/presentation/view/widgets/create_task_list_tile.dart';
import 'package:food_ecommerce_app/feature/create_task/presentation/view/widgets/custom_calendar_date_picker.dart';
import 'package:food_ecommerce_app/feature/create_task/presentation/view/widgets/custom_date_choice.dart';
import 'package:food_ecommerce_app/feature/create_task/presentation/view/widgets/timer_and_schedual_buttons_date_picker.dart';
import 'package:food_ecommerce_app/feature/create_task/presentation/view_model/cubit/create_task_cubit.dart';
import 'package:food_ecommerce_app/feature/splash/presentation/view/widget/account_sign_in_button.dart';
import 'package:intl/intl.dart';

class ShowBottomSheetDatePicker extends StatelessWidget {
  const ShowBottomSheetDatePicker({super.key, this.datePickerVarityModel});
  final DatePickerVarityModel? datePickerVarityModel;
  static final List<DatePickerVarityModel> items = [
    DatePickerVarityModel(
      icon: AppImages.sun,
      text: 'Today',
      date: DateFormat('dd MMM yyyy').format(DateTime.now()).toString(),
    ),
    DatePickerVarityModel(
      icon: AppImages.cloud,
      text: 'Tomorrow',
      date: DateFormat(
        'EEE',
      ).format(DateTime.now().add(Duration(days: 1))).toString(),
    ),
    DatePickerVarityModel(
      icon: AppImages.car,
      text: 'This Weekend',
      date: DateFormat('EEE').format(DateTime.now()).toString(),
    ),
    DatePickerVarityModel(
      icon: AppImages.reserve,
      text: 'Tomorrow',
      date: DateFormat(
        'dd MMM yyyy',
      ).format(DateTime.now().add(Duration(days: 7))).toString(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreateTaskCubit(),
      child: Column(
        children: [
          CustomDateChoice(items: items),
          CustomCalendarDatePicker(),
          Spacer(),
          TimerAndSchedualButtonDatePicker(),
        ],
      ),
    );
  }
}
