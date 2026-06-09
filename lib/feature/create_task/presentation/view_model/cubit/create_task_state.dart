part of 'create_task_cubit.dart';

@immutable
sealed class CreateTaskState {}

final class InitialTask extends CreateTaskState {}

final class DatePickerOpendState extends CreateTaskState {}
final class DatePickedState extends CreateTaskState {
  final String selectedDate;
  DatePickedState(this.selectedDate);
}
