import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:food_ecommerce_app/feature/create_task/data/model/date_picker_varity_model.dart';
import 'package:food_ecommerce_app/feature/create_task/presentation/view/widgets/show_bottom_sheet_date_picker.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'create_task_state.dart';

class CreateTaskCubit extends Cubit<CreateTaskState> {
  CreateTaskCubit() : super(InitialTask());
  DateTime selectedDate = DateTime.now();
   void updateDate(DateTime newDate) {
    selectedDate = newDate;
    emit(
      DatePickedState(
        DateFormat('dd MMM yyyy').format(newDate),
      ),
    );
  }


  void showMaterialBottomSheetDatePicker(BuildContext context) {
    DateTime tempDate = selectedDate;
    showModalBottomSheet(
      context: context,
      useRootNavigator: true,
      isScrollControlled: true,
      builder: (context) {
        return SizedBox(
          height: MediaQuery.sizeOf(context).height * .93,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 45),
            child: ShowBottomSheetDatePicker(),
          ),  
        );
      },
    );
  }
}

