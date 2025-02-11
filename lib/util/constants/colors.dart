import 'package:flutter/material.dart';

class TColors {
  TColors._();

  static const Color primaryColor = Color.fromARGB(255, 35, 35, 35);
  static const Color secodary = Color(0xffffe24b);
  static const Color accent = Color(0xffb0c7ff);

  static const Gradient linearGradient = LinearGradient(
      begin: Alignment(0.0, 0.0),
      end: Alignment(0.707, -0.707),
      colors: [Color(0xffff9a9e), Color(0xfffad0c4), Color(0xfffad0c4)]);

  static const Color textPrimary = Color(0xff333333);
  static const Color textsecodary = Color(0xff6c757d);
  static const Color textwhite = Colors.white;

  static const Color light = Color(0xfff6f6f6);
  static const Color dark = Color(0xff272727);
  static const Color primaryBackground = Color(0xfff3f5ff);

  static const Color lightContainer = Color(0xfff6f6f6);
  static Color darkContainer = TColors.white.withOpacity(0.1);

  static const Color buttonPrimary = Color(0xff4B68FF);
  static const Color buttonSecondary = Color(0xff6c757d);
  static const Color buttondisabled = Color(0xffc4c4c4);

  static const Color borderPrimary = Color(0xffd9d9d9);
  static const Color borderSecodary = Color(0xffe6e6e6);

  static const Color error = Color(0xffd32f2f);
  static const Color success = Color(0xff388e3c);
  static const Color warning = Color(0xfff57c00);
  static const Color info = Color(0xff1976d2);

  static const Color black = Color(0xff232323);
  static const Color darkerGrey = Color(0xff4f4f4f);
  static const Color darkGrey = Color(0xff939393);
  static const Color grey = Color(0xffe0e0e0);
  static const Color softGrey = Color(0xfff4f4f4);
  static const Color lightGrey = Color(0xfff9f9f9);
  static const Color white = Color(0xffffffff);
}
