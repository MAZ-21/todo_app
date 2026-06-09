import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageCubit extends Cubit<int>{
  HomePageCubit() : super(0);
  void changeTap(int index) => emit(index);
}