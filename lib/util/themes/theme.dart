import 'package:flutter/material.dart';
import 'package:go_cart/util/themes/custom_themes/appbar_theme.dart';
import 'package:go_cart/util/themes/custom_themes/bottom_sheet_theme.dart';
import 'package:go_cart/util/themes/custom_themes/checkbox_theme.dart';
import 'package:go_cart/util/themes/custom_themes/chip_theme.dart';
import 'package:go_cart/util/themes/custom_themes/elevated_button_theme.dart';
import 'package:go_cart/util/themes/custom_themes/outlined_button_theme.dart';
import 'package:go_cart/util/themes/custom_themes/text_field_themes.dart';
import 'package:go_cart/util/themes/custom_themes/text_theme.dart';

class TAppTheme{
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.black,
    scaffoldBackgroundColor: const Color.fromARGB(255, 241, 241, 241),
    textTheme: TTextTheme.LightTextTheme,
    chipTheme: TChipTheme.lightChipTheme,
    appBarTheme: TAppbarTheme.lightAppBarTheme,
    checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFieldThemes.lightInputDecorationTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: const Color.fromARGB(255, 39, 39, 39),
    scaffoldBackgroundColor: const Color.fromARGB(255, 0, 0, 0),
    textTheme: TTextTheme.darkTextTheme,
    chipTheme: TChipTheme.darkChipTheme,
    appBarTheme: TAppbarTheme.darkAppBarTheme,
    checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: TTextFieldThemes.dartInputDecorationTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
  );
  
} 