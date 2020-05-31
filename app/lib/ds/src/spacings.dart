// https://material.io/design/layout/responsive-layout-grid.html#columns-gutters-and-margins

class Spacings {
  static const double unit = 16;

  ///  [unit] / 16 = 1pt
  static const double xxxS = unit / 16.0;

  /// [unit] / 8 = 2pt
  static const double xxS = unit / 8.0;

  /// [unit] / 4 = 4pt
  static const double xS = unit / 4.0;

  /// [unit] / 2 = 8pt
  static const double s = unit / 2.0;

  /// [unit] = 16pt
  static const double m = unit;

  /// [unit] * 2 = 32pt
  static const double l = unit * 2.0;

  /// [unit] * 4 = 64pt
  static const double xL = unit * 4.0;

  /// [unit] * 8 = 128pt
  static const double xxL = unit * 8.0;
}
