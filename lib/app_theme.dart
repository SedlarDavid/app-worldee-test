import 'dart:ui';

import 'package:flutter_control/core.dart';

class AppTheme extends ControlTheme {
  MaterialColor get swatchColor =>
      MaterialColor(0xFF01D9CF, primarySwatchColors);

  Map<int, Color> primarySwatchColors = {
    50: const Color.fromRGBO(1, 217, 207, .1),
    100: const Color.fromRGBO(1, 217, 207, .2),
    200: const Color.fromRGBO(1, 217, 207, .3),
    300: const Color.fromRGBO(1, 217, 207, .4),
    400: const Color.fromRGBO(1, 217, 207, .5),
    500: const Color.fromRGBO(1, 217, 207, .6),
    600: const Color.fromRGBO(1, 217, 207, .7),
    700: const Color.fromRGBO(1, 217, 207, .8),
    800: const Color.fromRGBO(1, 217, 207, .9),
    900: const Color.fromRGBO(1, 217, 207, 1),
  };

  final textDark = const Color(0xFF202D3D);
  final textLight = const Color(0xFF97ADD6);

  final baseDuration = const Duration(milliseconds: 300);

  @override
  Color get primaryColor => primaryConstColor;

  static const primaryConstColor = Color(0xFF01D9CF);

  /// 15.0
  @override
  final double padding = paddingConst;
  static const double paddingConst = 15.0;

  /// 7.5
  @override
  final double paddingHalf = paddingHalfConst;
  static const double paddingHalfConst = 7.5;

  /// 20.0
  @override
  final double paddingMid = paddingMidConst;
  static const double paddingMidConst = 20.0;

  /// 30.0
  @override
  final double paddingExtended = paddingExtendedConst;
  static const double paddingExtendedConst = 30.0;

  /// 40.0
  @override
  final double paddingSection = paddingSectionConst;
  static const double paddingSectionConst = 40.0;

  /// 50.0
  @override
  final double paddingHead = paddingHeadConst;
  static const double paddingHeadConst = 50.0;

  /// 150.0
  final double paddingExtraLarge = paddingExtraLargeConst;
  static const double paddingExtraLargeConst = 150.0;

  AppTheme([BuildContext? context]) : super(context);

  ThemeData get defaultTheme => ThemeData(
        primaryColor: primaryColor,
        primaryColorLight: primaryColorLight,
        primaryColorDark: primaryColorDark,
        accentColor: primaryColor,
        canvasColor: backgroundColor,
        indicatorColor: tintColor,
        primarySwatch: swatchColor,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: swatchColor,
          primaryColorDark: primaryColor,
        ),
        textTheme: buildTextTheme(
          textDark,
          textLight,
        ),
      );

  TextTheme buildTextTheme(Color colorA, Color colorB) => TextTheme(
        headline1: TextStyle(
            color: colorA,
            fontSize: 22.0,
            fontWeight: FontWeight.w900,
            letterSpacing: 0),
        headline2: TextStyle(
            color: colorA,
            fontSize: 20.0,
            fontWeight: FontWeight.w800,
            letterSpacing: 0),
        headline3: TextStyle(
            color: colorA,
            fontSize: 18.0,
            fontWeight: FontWeight.w800,
            letterSpacing: 0),
        subtitle1: TextStyle(
            color: colorA,
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
            letterSpacing: 0),
        subtitle2: TextStyle(
          color: colorA,
          fontWeight: FontWeight.bold,
          fontSize: 14.0,
          letterSpacing: 0,
        ),
        bodyText1: TextStyle(
            color: colorA,
            fontSize: 12.0,
            fontWeight: FontWeight.normal,
            letterSpacing: 0),
        bodyText2: TextStyle(
            color: colorA,
            fontSize: 12.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 0),
        caption: TextStyle(
            color: colorB,
            fontSize: 11.0,
            fontWeight: FontWeight.normal,
            letterSpacing: 0),
        button: TextStyle(
            color: colorA,
            fontSize: 13.0,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.3),
      );
}
