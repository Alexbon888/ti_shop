import 'package:flutter/material.dart';
import 'package:ti_shop/common/styles/spacing_styles.dart';
import 'package:ti_shop/utils/constants/sizes.dart';
import 'package:ti_shop/utils/constants/texts_string.dart';
import 'package:ti_shop/utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subTitle, required this.onPressed});

  final String image, title, subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TISpacingStyle.paddingWithAppBarHeight *2,
          child: Column(
            children: [
              // image
              Image(
                image: AssetImage(image),
                width: TIHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: TISizes.spaceBtwSections,),

              // title & subtitle
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TISizes.spaceBtwItems,),
              Text(
                subTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TISizes.spaceBtwSections,),

              //buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onPressed,
                  child: const Text(TITexts.tiContinue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}