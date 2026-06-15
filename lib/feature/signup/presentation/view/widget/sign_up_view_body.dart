import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ecommerce_app/core/util/app_image.dart';
import 'package:food_ecommerce_app/core/util/app_styles.dart';
import 'package:food_ecommerce_app/feature/home_page_create_theme/presentation/view/widget/home_page_view.dart';
import 'package:food_ecommerce_app/feature/home_page_create_theme/presentation/view/widget/home_page_view_body.dart';
import 'package:food_ecommerce_app/feature/signup/presentation/view/widget/custom_text_editing_controller.dart';
import 'package:food_ecommerce_app/feature/signup/presentation/view/widget/sign_up.dart';
import 'package:food_ecommerce_app/feature/signup/presentation/view/widget/sign_up_text_guid.dart';
import 'package:food_ecommerce_app/feature/signup/presentation/view_model/cubit/sign_up_cubit.dart';
import 'package:food_ecommerce_app/feature/splash/presentation/view/widget/custom_elevated_button.dart';


class SignUpViewBody extends StatelessWidget {
  SignUpViewBody({super.key});
  final TextEditingController controller = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
  final cubit = context.watch<SignUpCubit>();
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SignUpTextGuid(),
                SizedBox(height: 48,),
                Text(
                  'Email Address',
                  style: Styles.medium18(context),
                ),
                SizedBox(height: 12,),
                CustomTextField(
                  hintText: 'name@example.com',
                  inputType: TextInputType.emailAddress,
                  controller: controller,
                  isObsecure: false,
                  validator: (String? value){
                    if(value!.isEmpty){
                      return 'enter an email';
                    }
                    if(!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value) || !value.contains('@')){
                      return 'invalid email';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 24,),
                Text(
                  'Password',
                  style: Styles.medium18(context),
                ),
                SizedBox(height: 12,),
                CustomTextField(
                  key: const ValueKey('password'),
                  hintText: 'Enter your password',
                  inputType: TextInputType.text,
                  isObsecure: cubit.isPasswordHidden,
                  controller: passwordController,
                  onObsecurePressed: (){
                    cubit.togglePasswordVisibility();
                  },
                  icon: cubit.isPasswordHidden ? 
                  SvgPicture.asset(AppImages.eyeSlash) : SvgPicture.asset(AppImages.eye), 
                  validator: (value){
                    if(value!.isEmpty){
                      return 'enter a password';
                    }
                    if(RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value) || value.length <= 8){
                      return 'enter a strong passwrod';
                    }
                    return null;
                  },
                ),
                Spacer(),
                ContinueElevatedButton(
                  onPressed: () async{
                    if(_formKey.currentState!.validate()){
                      await context.read<SignUpCubit>().signUp(controller.text, passwordController.text);
                      log(controller.text);
                      log(passwordController.text);
                    }
                  },
                  title: 'Next',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}