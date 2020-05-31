import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

// Can't easily subclass [ThemeData] directly without calling factory
// constructor
abstract class RallyTheme {
  RallyTheme._() : super();

  static ThemeData data() {
    return ThemeData(
      primarySwatch: RallyColors.green,
      fontFamily: 'RobotoCondensed',
      colorScheme: ColorScheme.light(
        primary: RallyColors.green,
//        primaryVariant: const Color(0xff3700b3),
//        secondary: const Color(0xff03dac6),
//        secondaryVariant: const Color(0xff018786),
        background: RallyColors.gray.shade100,
        surface: RallyColors.gray.shade100,
        error: RallyColors.red,
//        onPrimary: Colors.white,
//        onSecondary: Colors.black,
//        onSurface: Colors.black,
//        onBackground: Colors.black,
//        onError: Colors.white,
      ),
      scaffoldBackgroundColor: RallyColors.gray.shade100,
      typography: Typography.material2018(
        platform: defaultTargetPlatform,
        black: null,
        white: null,
        englishLike: englishLike,
      ),
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }

  static const englishLike = TextTheme(
    headline1: TextStyle(
        inherit: true,
        textBaseline: TextBaseline.alphabetic,
        debugLabel: 'rally englishLike headline1',
        fontFamily: 'RobotoCondensed',
        fontWeight: FontWeight.w300,
        fontSize: 96),
    headline2: TextStyle(
        inherit: true,
        textBaseline: TextBaseline.alphabetic,
        debugLabel: 'rally englishLike headline2',
        fontFamily: 'RobotoCondensed',
        fontWeight: FontWeight.w300,
        fontSize: 60),
    headline3: TextStyle(
        inherit: true,
        textBaseline: TextBaseline.alphabetic,
        debugLabel: 'rally englishLike headline3',
        fontFamily: 'Eczar',
        fontWeight: FontWeight.normal,
        fontSize: 48),
    headline4: TextStyle(
        inherit: true,
        textBaseline: TextBaseline.alphabetic,
        debugLabel: 'rally englishLike headline4',
        fontFamily: 'RobotoCondensed',
        fontWeight: FontWeight.normal,
        fontSize: 34),
    headline5: TextStyle(
        inherit: true,
        textBaseline: TextBaseline.alphabetic,
        debugLabel: 'rally englishLike headline5',
        fontFamily: 'RobotoCondensed',
        fontWeight: FontWeight.normal,
        fontSize: 24),
    headline6: TextStyle(
        inherit: true,
        textBaseline: TextBaseline.alphabetic,
        debugLabel: 'rally englishLike headline6',
        fontFamily: 'RobotoCondensed',
        fontWeight: FontWeight.w500,
        fontSize: 20),
    subtitle1: TextStyle(
        inherit: true,
        textBaseline: TextBaseline.alphabetic,
        debugLabel: 'rally englishLike subtitle1',
        fontFamily: 'RobotoCondensed',
        fontWeight: FontWeight.normal,
        fontSize: 16),
    subtitle2: TextStyle(
        inherit: true,
        textBaseline: TextBaseline.alphabetic,
        debugLabel: 'rally englishLike subtitle2',
        fontFamily: 'RobotoCondensed',
        fontWeight: FontWeight.w500,
        fontSize: 14),
    bodyText1: TextStyle(
        inherit: true,
        textBaseline: TextBaseline.alphabetic,
        debugLabel: 'rally englishLike bodyText1',
        fontFamily: 'Eczar',
        fontWeight: FontWeight.normal,
        fontSize: 16),
    bodyText2: TextStyle(
        inherit: true,
        textBaseline: TextBaseline.alphabetic,
        debugLabel: 'rally englishLike bodyText2',
        fontFamily: 'RobotoCondensed',
        fontWeight: FontWeight.w300,
        fontSize: 14),
    button: TextStyle(
        inherit: true,
        textBaseline: TextBaseline.alphabetic,
        debugLabel: 'rally englishLike button',
        fontFamily: 'Eczar',
        fontWeight: FontWeight.bold,
        fontSize: 14),
    caption: TextStyle(
        inherit: true,
        textBaseline: TextBaseline.alphabetic,
        debugLabel: 'rally englishLike caption',
        fontFamily: 'RobotoCondensed',
        fontWeight: FontWeight.normal,
        fontSize: 12),
    overline: TextStyle(
        inherit: true,
        textBaseline: TextBaseline.alphabetic,
        debugLabel: 'rally englishLike overline',
        fontFamily: 'RobotoCondensed',
        fontWeight: FontWeight.normal,
        fontSize: 10),
  );
}
