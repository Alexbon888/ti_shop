import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ti_shop/common/styles/spacing_styles.dart';
import 'package:ti_shop/common/widgets/login_signup/form_divider.dart';
import 'package:ti_shop/common/widgets/login_signup/social_button.dart';
import 'package:ti_shop/utils/constants/sizes.dart';
import 'package:ti_shop/utils/constants/texts_string.dart';

import 'widgets/login_form.dart';
import 'widgets/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TISpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // logo, title & subtitle
              const TILoginHeader(),

              // form
              const TILoginForm(),

              // divider
              TIFormDivider(dividerText: TITexts.orSignInWith.capitalize!,),
              const SizedBox(width: TISizes.spaceBtwSections,),

              //footer
              const TISocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}