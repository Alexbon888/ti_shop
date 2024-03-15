import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ti_shop/features/authentication/screens/onboarding/onboarding.dart';
import 'utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TIAppTheme.lightTheme,
      darkTheme: TIAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}