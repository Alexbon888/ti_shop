import 'package:flutter/material.dart';
import 'package:ti_shop/utils/constants/image_strings.dart';
import 'package:ti_shop/utils/constants/sizes.dart';
import 'package:ti_shop/utils/constants/texts_string.dart';
import 'package:ti_shop/utils/helpers/helper_functions.dart';

class TILoginHeader extends StatelessWidget {
  const TILoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = TIHelperFunctions.isDarkMode(context);
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(dark ? TIImages.lightAppLogo : TIImages.darkAppLogo),
        ),
        Text(TITexts.loginTitle, style: Theme.of(context).textTheme.headlineMedium,),
        const SizedBox(height: TISizes.sm,),
        Text(TITexts.loginSubTitle, style: Theme.of(context).textTheme.bodyMedium,),
      ],
    );
  }
}