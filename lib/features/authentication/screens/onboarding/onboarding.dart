import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ti_shop/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:ti_shop/utils/constants/image_strings.dart';
import 'package:ti_shop/utils/constants/texts_string.dart';

import 'widgets/onboarding_dot_navigation.dart';
import 'widgets/onboarding_next_button.dart';
import 'widgets/onboarding_page.dart';
import 'widgets/onboarding_skip.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          // horizontal scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TIImages.onBoardingImage1,
                title: TITexts.onBoardingTitle1,
                subTitle: TITexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TIImages.onBoardingImage2,
                title: TITexts.onBoardingTitle2,
                subTitle: TITexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TIImages.onBoardingImage3,
                title: TITexts.onBoardingTitle3,
                subTitle: TITexts.onBoardingSubTitle3,
              ),
            ],
          ),

          // skip button
          const OnBoardingSkip(),

          // dot navigation smoothpageindicator
          const OnBoardingDotNavigation(),

          // circular button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}