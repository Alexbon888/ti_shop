import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ti_shop/utils/constants/sizes.dart';
import 'package:ti_shop/utils/constants/texts_string.dart';

class TILoginForm extends StatelessWidget {
  const TILoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TISizes.spaceBtwSections),
        child: Column(
          children: [
            // email
            TextFormField(
              decoration: const InputDecoration(prefixIcon: Icon(Iconsax.direct_right), labelText: TITexts.email,),
            ),
            const SizedBox(height: TISizes.spaceBtwInputField,),
        
            // password
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: TITexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: TISizes.spaceBtwInputField / 2,),
        
            // remember me & forget password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // remember me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(TITexts.rememberMe),
                  ],
                ),
        
                // forget password
                TextButton(onPressed: () {}, child: const Text(TITexts.forgetPassword),)
              ],
            ),
            const SizedBox(height: TISizes.spaceBtwSections,),
        
            // sign in button
            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () {}, child: const Text(TITexts.signin))),
            const SizedBox(height: TISizes.spaceBtwItems,),
        
            // create account button
            SizedBox(width: double.infinity, child: OutlinedButton(onPressed: () {}, child: const Text(TITexts.createAccount))),
          ],
        ),
      )
    );
  }
}