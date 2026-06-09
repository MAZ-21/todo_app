import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_ecommerce_app/feature/create_account/model/auth/auth_service.dart';
import 'package:food_ecommerce_app/feature/create_account/presentation/view/widgets/create_account_view_body.dart';
import 'package:food_ecommerce_app/feature/create_account/presentation/view_model/auth_cubit.dart';
import 'package:food_ecommerce_app/feature/create_account/presentation/view_model/auth_state.dart';

class CreateAccountView extends StatelessWidget {
  const CreateAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(AuthService()),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is AuthSuccessState) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(const SnackBar(content: Text('Login Success')));
            } else if (state is AuthFailureState) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(const SnackBar(content: Text('Login fail')));
            }
            else{
              Center(
                child: CircularProgressIndicator(),
              );
            }
          },
          builder: (context, state){
            return CreateAccountViewBody();
          },
        ),
      ),
    );
  }
}
