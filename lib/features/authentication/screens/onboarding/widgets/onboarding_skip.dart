import 'package:flutter/material.dart';
import 'package:ti_shop/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:ti_shop/utils/constants/sizes.dart';
import 'package:ti_shop/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TIDeviceUtils.getAppBarHeight(),
      right: TISizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnBoardingController.instance.skipPage(),
        child: const Text('skip'),
      ),
    );
  }
}