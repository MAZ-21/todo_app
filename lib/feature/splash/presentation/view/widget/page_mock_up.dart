import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_ecommerce_app/core/util/app_color.dart';
import 'package:food_ecommerce_app/core/util/app_styles.dart';
import 'package:food_ecommerce_app/core/util/size_cofig.dart';
import 'package:food_ecommerce_app/feature/create_account/presentation/view/widgets/create_account_view.dart';
import 'package:food_ecommerce_app/feature/splash/data/model/page_mock_up_model.dart';
import 'package:food_ecommerce_app/feature/splash/presentation/view/widget/custom_elevated_button.dart';
import 'package:food_ecommerce_app/feature/splash/presentation/view/widget/mock_up.dart';
import 'package:food_ecommerce_app/feature/splash/presentation/view_model/cubit/splash_cubit.dart';

class PageMockUp extends StatelessWidget {
  const PageMockUp({
    super.key, 
required this.model,
  });
 final PageMockUpModel model;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          MockUp(image: model.image),
          SizedBox(
            width: SizeConfig.responsiveWidth(context, 235),
            child: Text(
              model.firstText,
              textAlign: TextAlign.center,
              style: Styles.semiBold28,
              maxLines: 2,
            ),
          ),
          SizedBox(height: 16),
          SizedBox(
            width: SizeConfig.responsiveWidth(context, 293),
            child: Text(
              model.secondText,
              textAlign: TextAlign.center,
              style: Styles.regular16.copyWith(color: AppColor.textGrey),
              maxLines: 3,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: 57),
            child: ContinueElevatedButton(
              onPressed: () {
                if(model.controller.page == 2){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => CreateAccountView()),
                  );
                }
                else{
                  BlocProvider.of<SplashCubit>(context).nextPage(model.controller);
                }
              },
              title: 'Continue',
            ),
          ),
        ],
      ),
    );
  }
}
