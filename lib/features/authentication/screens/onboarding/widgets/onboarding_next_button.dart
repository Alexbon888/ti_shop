import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ti_shop/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:ti_shop/utils/constants/colors.dart';
import 'package:ti_shop/utils/constants/sizes.dart';
import 'package:ti_shop/utils/device/device_utility.dart';
import 'package:ti_shop/utils/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = TIHelperFunctions.isDarkMode(context);

    return Positioned(
      right: TISizes.defaultSpace,
      bottom: TIDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: dark ? TIColors.primary: Colors.black
        ),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}