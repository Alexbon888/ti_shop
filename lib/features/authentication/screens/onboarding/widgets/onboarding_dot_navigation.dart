import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ti_shop/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:ti_shop/utils/constants/colors.dart';
import 'package:ti_shop/utils/constants/sizes.dart';
import 'package:ti_shop/utils/device/device_utility.dart';
import 'package:ti_shop/utils/helpers/helper_functions.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = TIHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: TIDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: TISizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? TIColors.light: TIColors.dark,
          dotHeight: 6,
        ),
      ),
    );
  }
}