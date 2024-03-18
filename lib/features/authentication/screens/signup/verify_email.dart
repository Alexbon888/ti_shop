import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ti_shop/common/widgets/success_screen/success_screen.dart';
import 'package:ti_shop/features/authentication/screens/login/login.dart';
import 'package:ti_shop/utils/constants/image_strings.dart';
import 'package:ti_shop/utils/constants/sizes.dart';
import 'package:ti_shop/utils/constants/texts_string.dart';
import 'package:ti_shop/utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.offAll(() => const LoginScreen()), icon: const Icon(CupertinoIcons.clear),),
        ],
      ),
      body: SingleChildScrollView(
        // padding to give equal space on all sides in all screens
        child: Padding(
          padding: const EdgeInsets.all(TISizes.defaultSpace),
          child:Column(
            children: [
              // image
              Image(
                image: const AssetImage(
                  TIImages.deliveredEmailIllustration
                ),
                width: TIHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: TISizes.spaceBtwSections,),

              // title & subtitle
              Text(
                TITexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TISizes.spaceBtwItems,),
              Text(
                'Support@technoindie.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TISizes.spaceBtwItems,),
              Text(
                TITexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TISizes.spaceBtwSections,),

              //buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => SuccessScreen(
                    image: TIImages.staticSuccessIllustration,
                    title: TITexts.yourAccountCreatedTitle,
                    subTitle: TITexts.yourAccountCreatedSubTitle,
                    onPressed: () => Get.to(() => const LoginScreen()),
                  ),),
                  child: const Text(TITexts.tiContinue),
                ),
              ),
              const SizedBox(height: TISizes.spaceBtwItems,),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
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