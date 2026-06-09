import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_ecommerce_app/feature/create_account/model/auth/auth_service.dart';
import 'package:food_ecommerce_app/feature/create_account/model/auth/firebase_auth_exception.dart';
import 'package:food_ecommerce_app/feature/create_account/presentation/view_model/auth_state.dart';

class AuthCubit extends Cubit<AuthState>{
  final AuthService authService;
  AuthCubit(this.authService) : super(AuthInitialState());
  Future<void> signInWithGoogle() async {
    emit(AuthLoadingState());
    try{
      await authService.signInWithGoogle();
      emit(AuthSuccessState());
    } on FirebaseAuthException catch(e){
      final errMessage = FirebaseAuthExceptionHandling.getAuthenticationErrorMessages(e.code);
      emit(AuthFailureState(errMessage));
    }catch(e){
      AuthFailureState('Somthing went wrong. Try again later!');
    }
    
  }
  // Future<void> signOut() async{
  //   await authService.singOut();
  //   emit(AuthInitialState());
  // }
}