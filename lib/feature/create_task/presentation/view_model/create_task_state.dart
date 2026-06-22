import 'package:flutter/material.dart';
@immutable
sealed class CreateTaskState {}

//this is the first state
final class InitialTaskState extends CreateTaskState {}

// create states  for the entire screen create update delete and failure;
