import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:food_ecommerce_app/feature/create_account/presentation/view/widgets/create_account_view.dart';
import 'package:meta/meta.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashState(pageIndex: 0));
  void changePage(int index){
    emit(SplashState(pageIndex: index));
  }
  void nextPage(PageController controller){
      controller.animateToPage(
        state.pageIndex + 1,
        duration: const Duration(milliseconds: 800),
        curve: Curves.easeInOut,
      );
      emit(SplashState(pageIndex: state.pageIndex + 1));
  }
  void nextButton(BuildContext context){
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => CreateAccountView()),
    );
  }
}
