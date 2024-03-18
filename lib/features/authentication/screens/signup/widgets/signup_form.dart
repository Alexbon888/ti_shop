import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ti_shop/features/authentication/screens/signup/verify_email.dart';
import 'package:ti_shop/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:ti_shop/utils/constants/sizes.dart';
import 'package:ti_shop/utils/constants/texts_string.dart';

class TISignupForm extends StatelessWidget {
  const TISignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          // first & last name
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: TITexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: TISizes.spaceBtwInputField,),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: TITexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: TISizes.spaceBtwInputField,),
    
          // username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: TITexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(height: TISizes.spaceBtwInputField,),
    
          // email
          TextFormField(
            decoration: const InputDecoration(
              labelText: TITexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: TISizes.spaceBtwInputField,),
    
          // phone number
          TextFormField(
            decoration: const InputDecoration(
              labelText: TITexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: TISizes.spaceBtwInputField,),
    
          // password
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              labelText: TITexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: TISizes.spaceBtwSections,),
    
          // terms & conditions checkbox
          const TITermsAndConditionCheckbox(),
          const SizedBox(height: TISizes.spaceBtwSections,),
    
          // sign up button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => const VerifyEmailScreen() ),
              child: const Text(TITexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}