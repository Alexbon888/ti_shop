import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ti_shop/utils/constants/image_strings.dart';
import 'package:ti_shop/utils/constants/sizes.dart';
import 'package:ti_shop/utils/constants/texts_string.dart';
import 'package:ti_shop/utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TISizes.defaultSpace),
          child: Column(
            children: [
              // image with 60% of screen width
              Image(
                image: const AssetImage(TIImages.deliveredEmailIllustration),
                width: TIHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: TISizes.spaceBtwSections,),

              // title & subtitle
              Text(
                TITexts.changeYourPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TISizes.spaceBtwItems,),
              Text(
                TITexts.changeYourPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TISizes.spaceBtwSections,),

              // buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){},
                  child: const Text(TITexts.done),
                ),
              ),
              const SizedBox(height: TISizes.spaceBtwItems,),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: (){},
                  child: const Text(TITexts.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}