part of 'sign_up_cubit.dart';

@immutable
sealed class SignUpState {}

final class SignUpInitial extends SignUpState {}
final class SignUpSuccessState extends SignUpState {}
final class SignUpLoadingState extends SignUpState {}
final class SignUpFailurState extends SignUpState {
  final String errorMessage;
  SignUpFailurState(this.errorMessage); 
}
final class SignUpPasswordVisibilityChanged extends SignUpState {}
