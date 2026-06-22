// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:food_ecommerce_app/core/util/app_color.dart';
// import 'package:food_ecommerce_app/core/util/app_image.dart';
// import 'package:food_ecommerce_app/core/util/app_styles.dart';
// import 'package:food_ecommerce_app/feature/splash/presentation/view/widget/account_sign_in_button.dart';
// import 'package:intl/intl.dart';

// class ShowBottomSheetDatePicker extends StatelessWidget {
//   const ShowBottomSheetDatePicker({super.key, this.datePickerVarityModel});
//   final DatePickerVarityModel? datePickerVarityModel;
//   static final List<DatePickerVarityModel> items = [
//     DatePickerVarityModel(
//       icon: AppImages.sun,
//       text: 'Today',
//       date: DateFormat('dd MMM yyyy').format(DateTime.now()),
//     ),
//     DatePickerVarityModel(
//       icon: AppImages.cloud,
//       text: 'Tomorrow',
//       date: DateFormat('EEE').format(DateTime.now().add(Duration(days: 1))),
//     ),
//     DatePickerVarityModel(
//       icon: AppImages.car,
//       text: 'This Weekend',
//       date: DateFormat('EEE').format(DateTime.now()),
//     ),
//     DatePickerVarityModel(
//       icon: AppImages.reserve,
//       text: 'Tomorrow',
//       date: DateFormat(
//         'dd MMM yyyy',
//       ).format(DateTime.now().add(Duration(days: 7))),
//     ),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => CreateTaskCubit(),
//       child: Column(
//         children: [
//           CustomDateChoice(items: items),
//           CustomCalendarDatePicker(),
//           Spacer(),
//           TimerAndSchedualButtonDatePicker(),
//         ],
//       ),
//     );
//   }
// }
