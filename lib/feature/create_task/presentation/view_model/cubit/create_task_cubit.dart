import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:food_ecommerce_app/core/util/app_color.dart';
import 'package:food_ecommerce_app/core/util/size_cofig.dart';
import 'package:food_ecommerce_app/feature/create_task/data/model/date_picker_varity_model.dart';
import 'package:food_ecommerce_app/feature/create_task/data/model/task_model.dart';
import 'package:food_ecommerce_app/feature/create_task/presentation/view/widgets/create_task_todo.dart';
import 'package:food_ecommerce_app/feature/create_task/presentation/view/widgets/show_bottom_sheet_date_picker.dart';
import 'package:intl/intl.dart';
part 'create_task_state.dart';

class CreateTaskCubit extends Cubit<CreateTaskState> {
  CreateTaskCubit() : super(InitialTaskState());
  //adding a date member to hold and update and delete the model attributes
  String? taskTitle;
  String? taskDescription;
  DateTime? selectedDate;
  TimeOfDay? selectedTime;
  String? selectedFlag;
  //update each value using bloc point
  void onTitleChange(String value){
    taskTitle = value;
  }
  void onDescriptionChnage(String value){
    taskDescription = value;
  }
  void updateDate(DateTime value){
    selectedDate = value; 
    emit(DatePickedState(DateFormat('dd MMM yyyy').format(value)));

  }
  void updateFlag(String value){
    selectedFlag = value;
  }

  Future<void> timePicker(BuildContext context) async {
    //catch the picked time that the user tap on
    final pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.light(
              primary: Colors.teal, // Header background & buttons
              onPrimary: Colors.white, // Header text color
              onSurface: Colors.black, // Dial text color
            ),
            timePickerTheme: TimePickerThemeData(
              hourMinuteShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50)
              ),
              dayPeriodShape:  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50)
              ),
              backgroundColor: Colors.white,
              hourMinuteTextColor: Colors.white,
              hourMinuteColor: Colors.teal,
              dialHandColor: Colors.teal,
              dialBackgroundColor: const Color(0xFFF3E5F5),
              entryModeIconColor: Colors.teal,
              helpTextStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              dayPeriodTextColor: const Color(0xFFF3E5F5),
              dayPeriodColor: Colors.teal,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
            ),
          ),
          child: child!,
        );
      },
    );
    // if the picked time  is not null
    if(pickedTime !=null){
      // then the value passed to the model
      selectedTime = pickedTime;
      // and emit state to change the value and the ui to appear
      emit(TimePickedState(pickedTime.format(context)));
    }
  }
  // its very important
  void submitTask(){
    if(taskTitle == null || taskDescription!.trim().isEmpty){
      emit(TaskCreatedError('title must not be empty!'));
      return;
    }
    final TaskModel task = TaskModel(
      title: taskTitle!,
      description: taskDescription!,
      date: selectedDate,
      time: selectedTime,
      priority: selectedFlag,
    );
    log("task has been created!!!!!!!!!!!!!!!!!!+++++++++++");
    emit(CreatedTaskSuccess(task));
  }

  void showMaterialBottomSheetDatePicker(BuildContext context) {
    showModalBottomSheet(
      context: context,
      useRootNavigator: true,
      isScrollControlled: true,
      builder: (context) {
        return SizedBox(
          height: SizeConfig.responsiveHeight(context, 759),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 45),
            child: ShowBottomSheetDatePicker(),
          ),
        );
      },
    );
  }
}
