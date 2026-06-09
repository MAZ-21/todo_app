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
          headerBackgroundColor: Colors.teal,
          headerForegroundColor: Colors.white,
          dayForegroundColor: MaterialStateProperty.all(Colors.black87),
          todayForegroundColor: MaterialStateProperty.all(Colors.white),
          todayBackgroundColor: MaterialStateProperty.all(AppColor.teal),
          dayShape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
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
