import 'package:flutter/material.dart';
import 'package:ti_shop/utils/constants/colors.dart';
import 'package:ti_shop/utils/constants/sizes.dart';
import 'package:ti_shop/utils/constants/texts_string.dart';
import 'package:ti_shop/utils/helpers/helper_functions.dart';

class TITermsAndConditionCheckbox extends StatelessWidget {
  const TITermsAndConditionCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = TIHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(
            value: true,
            onChanged: (value) {}
          ),
        ),
        const SizedBox(width: TISizes.spaceBtwItems,),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '${TITexts.iAgreeTo} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(text: '${TITexts.privacyPolicy} ', style: Theme.of(context).textTheme.bodyMedium!.apply(
                color: dark ? TIColors.white : TIColors.primary,
                decoration: TextDecoration.underline,
                decorationColor: dark ? TIColors.white : TIColors.primary,
              ),),
              TextSpan(
                text: '${TITexts.and} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(text: TITexts.termOfUse, style: Theme.of(context).textTheme.bodyMedium!.apply(
                color: dark ? TIColors.white : TIColors.primary,
                decoration: TextDecoration.underline,
                decorationColor: dark ? TIColors.white : TIColors.primary,
              ),),
            ],
          ),
        ),
      ],
    );
  }
}