import 'package:flutter/material.dart';
import 'custom_theme/appbar_theme.dart';
import 'custom_theme/bottom_sheet_theme.dart';
import 'custom_theme/checkbox_theme.dart';
import 'custom_theme/chip_theme.dart';
import 'custom_theme/elevated_button_theme.dart';
import 'custom_theme/outlined_button_theme.dart';
import 'custom_theme/text_field_theme.dart';
import 'custom_theme/text_theme.dart';

class TIAppTheme {
  TIAppTheme._();

  // light theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: TITextTheme.lightTextTheme,
    chipTheme: TIChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: TIAppBarTheme.lightAppBarTheme,
    checkboxTheme: TICheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: TIBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: TIElevatedButtonTheme.lightElevatedButton,
    outlinedButtonTheme: TIOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TITextFieldTheme.lightInputDecorationTheme,
  );

  // dark theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: TITextTheme.darkTextTheme,
    chipTheme: TIChipTheme.darkChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: TIAppBarTheme.darkAppBarTheme,
    checkboxTheme: TICheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: TIBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: TIElevatedButtonTheme.darkElevatedButton,
    outlinedButtonTheme: TIOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: TITextFieldTheme.darkInputDecorationTheme,
  );
}