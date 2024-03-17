import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ti_shop/common/widgets/login_signup/form_divider.dart';
import 'package:ti_shop/common/widgets/login_signup/social_button.dart';
import 'package:ti_shop/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:ti_shop/utils/constants/sizes.dart';
import 'package:ti_shop/utils/constants/texts_string.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TISizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // title
              Text(TITexts.signupTitle, style: Theme.of(context).textTheme.headlineMedium,),
              const SizedBox(height: TISizes.spaceBtwSections,),

              // form
              const TISignupForm(),
              const SizedBox(height: TISizes.spaceBtwSections,),

              // divider
              TIFormDivider(dividerText: TITexts.orSignUpWith.capitalize!),
              const SizedBox(height: TISizes.spaceBtwSections,),

              // social button
              const TISocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}