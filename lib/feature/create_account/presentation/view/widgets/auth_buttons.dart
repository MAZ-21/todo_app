import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_ecommerce_app/core/util/app_color.dart';
import 'package:food_ecommerce_app/core/util/app_image.dart';
import 'package:food_ecommerce_app/feature/create_account/presentation/view_model/auth_cubit.dart';
import 'package:food_ecommerce_app/feature/home_page_create_theme/presentation/view/widget/home_page_view.dart';
import 'package:food_ecommerce_app/feature/splash/presentation/view/widget/account_sign_in_button.dart';

class AuthBottons extends StatelessWidget {
  const AuthBottons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AccountSignInButton(
            onPressed: () {},
            image: AppImages.facebook,
            title: 'Facebook',
            backgroundColor: AppColor.buttonGrey,
            textColor: Colors.black,
          ),
        ),
        SizedBox(width: 15.5,),
        Expanded(
          child: AccountSignInButton(
            image: AppImages.google,
            title: 'Google',
            backgroundColor: AppColor.buttonGrey,
            textColor: Colors.black,
            onPressed: (){
              context.read<AuthCubit>().signInWithGoogle;
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ChooseThemeHomePageView()),
              );
            },
          ),
        ),
      ],
    );
  }
}
