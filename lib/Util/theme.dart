import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
  primaryColor: const Color(0XFFFF7622),
  scaffoldBackgroundColor: Colors.white,
  colorScheme: ColorScheme.fromSwatch().copyWith(
    secondary: const Color(0xFFF0F5FA), //text field color
    background: const Color(0xFF121223),
    surface: const Color(0xFF5C5E66), // text color
  ),
);