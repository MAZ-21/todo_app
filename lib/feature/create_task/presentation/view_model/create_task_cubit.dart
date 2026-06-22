import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_ecommerce_app/feature/create_task/presentation/view_model/create_task_state.dart';

class CreateTaskCubit extends Cubit<CreateTaskState> {
  CreateTaskCubit() : super(InitialTaskState());
  //date  icon action by showing date form in a bottom sheet
  
  //  void showMaterialBottomSheetDatePicker(BuildContext context) {
  //   showModalBottomSheet(
  //     context: context,
  //     useRootNavigator: true,
  //     isScrollControlled: true,
  //     builder: (context) {
  //       return SizedBox(
  //         height: SizeConfig.responsiveHeight(context, 759),
  //         child: Padding(
  //           padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 45),
  //           child: ShowBottomSheetDatePicker(),
  //         ),
  //       );
  //     },
  //   );
  // }

  //time picker icon action
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
                borderRadius: BorderRadius.circular(5)
              ),
              dayPeriodShape:  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5)
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
      // selectedTime = pickedTime;
      // // and emit state to change the value and the ui to appear
      // emit(TimePickedState(pickedTime.format(context)));
    }
  } 
}
