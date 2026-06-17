part of 'create_task_cubit.dart';

@immutable
sealed class CreateTaskState {}

//this is the first state
final class InitialTaskState extends CreateTaskState {}

//if date picker opened successfully
final class DatePickerOpendState extends CreateTaskState {}

//if user picked date
final class DatePickedState extends CreateTaskState {
  final String selectedDate;
  DatePickedState(this.selectedDate);
}

//if user picked time
final class TimePickedState extends CreateTaskState {
  final String selectedTime;
  TimePickedState(this.selectedTime);
}

//selcting flag
final class SelectFlag extends CreateTaskState{
  final String selectedFlag;

  SelectFlag(this.selectedFlag);
}

// if task acuatlly submitted
final class CreatedTaskSuccess extends CreateTaskState {
  final TaskModel task;
  CreatedTaskSuccess(this.task);
}

// if there was an error to submit a task
final class TaskCreatedError extends CreateTaskState {
  final String message;
  TaskCreatedError(this.message);
}
