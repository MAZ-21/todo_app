import 'package:flutter/material.dart';
import 'package:food_ecommerce_app/core/util/app_image.dart';
import 'package:food_ecommerce_app/feature/create_account/presentation/view/widgets/auth_buttons.dart';
import 'package:food_ecommerce_app/feature/create_account/presentation/view/widgets/continue_with_line_divider.dart';
import 'package:food_ecommerce_app/feature/create_account/presentation/view/widgets/email_elevated_button.dart';
import 'package:food_ecommerce_app/feature/create_account/presentation/view/widgets/welcome_to_app.dart';
import 'package:food_ecommerce_app/feature/splash/presentation/view/widget/mock_up.dart';

class CreateAccountViewBody extends StatelessWidget {
  const CreateAccountViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            WelcomToApp(),
            SizedBox(height: 53),
            MockUp(image: AppImages.mockup_3),
            SizedBox(height: 123),
            EmailElevatedButton(),
            SizedBox(height: 16),
            ContinueWithLineDivider(),
            SizedBox(height: 16),
            AuthBottons(),
          ],
        ),
      ),
    );
  }
}
