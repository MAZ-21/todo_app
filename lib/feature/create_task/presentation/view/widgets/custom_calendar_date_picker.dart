import 'package:flutter/material.dart';
import 'package:food_ecommerce_app/core/util/app_color.dart';

class CustomCalendarDatePicker extends StatelessWidget {
  const CustomCalendarDatePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        datePickerTheme: DatePickerThemeData(
          backgroundColor: Colors.white,
          headerBackgroundColor: AppColor.teal,
          headerForegroundColor: Colors.white,
          todayBorder: BorderSide.none,
          todayBackgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.selected)) {
              return AppColor.teal;
            }
            return null;
          }),
          todayForegroundColor:MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.selected)) {
              return Colors.white;
            }
            return Colors.black;
          }),
          dayForegroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.selected)) {
              return Colors.white;
            }
            return Colors.black;
          }),
          dayBackgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.selected)) {
              return AppColor.teal;
            }
            return null;
          }),
          dayShape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
        ),
      ),
      child: CalendarDatePicker(
        firstDate: DateTime.now(),
        initialDate: DateTime.now(),
        lastDate: DateTime(2100),
        onDateChanged: (DateTime newDate) {},
      ),
    );
  }
}
