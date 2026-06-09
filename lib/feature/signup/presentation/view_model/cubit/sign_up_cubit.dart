import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ecommerce_app/core/util/app_image.dart';
import 'package:food_ecommerce_app/feature/create_account/model/auth/firebase_auth_exception.dart';
import 'package:food_ecommerce_app/feature/home_page_create_theme/presentation/view/widget/home_page_view.dart';
import 'package:food_ecommerce_app/feature/signup/data/sign_up_auth.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  
  SignUpCubit(this.signUpAuth) : super(SignUpInitial());
  final SignUpAuth signUpAuth;

  Future<void> signIn (String email, String password) async{
    emit(SignUpLoadingState());
    try{
      await signUpAuth.signInWithEmailPassword(email, password);
      emit(SignUpSuccessState());
    } on FirebaseAuthException catch(e){
      final errMessage = FirebaseAuthExceptionHandling.getAuthenticationErrorMessages(e.code);
      emit(SignUpFailurState(errMessage));

    } catch(e){
      SignUpFailurState('Somthing went wrong. Try again later!');
    }
  }

  Future<void> signUp (String email, String password) async {
    emit(SignUpLoadingState());
    try{
      await signUpAuth.signUpWithEmailPassword(email, password);
      emit(SignUpSuccessState());
    } on FirebaseAuthException catch(e){
      final errMessage = FirebaseAuthExceptionHandling.getAuthenticationErrorMessages(e.code);
      emit(SignUpFailurState(errMessage));
    } catch(e){
      SignUpFailurState('Somthing went wrong. Try again later!');
    }
  }
  // toggling password suffix icon
  bool isPasswordHidden = false;
  void togglePasswordVisibility(){
    isPasswordHidden = !isPasswordHidden;
    emit(SignUpPasswordVisibilityChanged()); 
  }
}
