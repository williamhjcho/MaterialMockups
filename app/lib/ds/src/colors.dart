import 'package:flutter/material.dart';

abstract class RallyColors {
  static const MaterialColor green = MaterialColor(
    0xFF1EB980, // 500
    <int, Color>{
      050: Color.fromARGB(255, 182, 255, 242),
      100: Color.fromARGB(255, 136, 254, 225),
      200: Color.fromARGB(255, 93, 247, 210),
      300: Color.fromARGB(255, 55, 239, 186),
      400: Color.fromARGB(255, 0, 228, 168),
      500: Color(0xFF00ac6a), // primary
      600: Color.fromARGB(255, 0, 156, 104),
      700: Color.fromARGB(255, 0, 125, 81),
      800: Color.fromARGB(255, 0, 95, 53),
      900: Color.fromARGB(255, 0, 57, 30),
    },
  );

  static const MaterialColor darkGreen = MaterialColor(
    0xFF045d56, // 700
    <int, Color>{
      700: Color(0xFF045d56),
    },
  );

  static const MaterialColor red = MaterialColor(
    0xFFff6859, // 300
    <int, Color>{
      050: Color.fromARGB(255, 255, 215, 208),
      200: Color.fromARGB(255, 255, 133, 124),
      300: Color(0xFFff6859), // 255, 104, 89
    },
  );

  static const MaterialColor yellow = MaterialColor(
    0xffffcf44, // 300
    <int, Color>{
      200: Color.fromARGB(255, 255, 220, 120),
      300: Color(0xffffcf44), // 255, 207, 68
      500: Color.fromARGB(255, 255, 172, 18),
    },
  );

  static const MaterialColor purple = MaterialColor(
    0xFFb15dff, // 200
    <int, Color>{
      050: Color.fromARGB(255, 222, 202, 247),
      200: Color(0xFFb15dff), // 177, 93, 255
      300: Color.fromARGB(255, 169, 50, 255),
    },
  );

  static const MaterialColor blue = MaterialColor(
    0xff72deff, // 200
    <int, Color>{
      100: Color.fromARGB(255, 178, 242, 255),
      200: Color(0xff72deff), // 114, 22, 255
      800: Color.fromARGB(255, 0, 130, 251),
    },
  );

  static const MaterialColor gray = MaterialColor(
    0xFF33333d,
    <int, Color>{
      100: Color.fromARGB(255, 51, 51, 61),
      200: Color.fromARGB(255, 55, 55, 63),
    },
  );
}
