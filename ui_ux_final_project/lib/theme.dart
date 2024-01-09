import 'dart:ui';

import 'package:flutter/material.dart';

class AppTheme {
  const AppTheme({
    this.primaryColor = const Color(2637055),
    this.tertiaryColor = const Color(000000),
    this.neutralColor = const Color(0000000),
  });

  final Color primaryColor, tertiaryColor, neutralColor;

  ThemeData toThemeData() {
    return ThemeData(useMaterial3: true);
  }
}