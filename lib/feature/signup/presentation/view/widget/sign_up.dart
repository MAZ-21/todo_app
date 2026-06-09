import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_ecommerce_app/feature/create_account/presentation/view_model/auth_state.dart';
import 'package:food_ecommerce_app/feature/home_page_create_theme/presentation/view/widget/home_page_view.dart';
import 'package:food_ecommerce_app/feature/signup/data/sign_up_auth.dart';
import 'package:food_ecommerce_app/feature/signup/presentation/view/widget/sign_up_view_body.dart';
import 'package:food_ecommerce_app/feature/signup/presentation/view_model/cubit/sign_up_cubit.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(SignUpAuth()),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: BlocConsumer<SignUpCubit, SignUpState>(
          listener: (context, state) {
            if (state is AuthLoadingState) {
              Center(child: CircularProgressIndicator());
            }
            if (state is SignUpSuccessState) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => ChooseThemeHomePageView(),
                ),
              );
            } else if (state is SignUpFailurState) {  
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(state.errorMessage)));
            }
          },
          builder: (context, state) {
            return SignUpViewBody();
          },
        ),
      ),
    );
  }
}
