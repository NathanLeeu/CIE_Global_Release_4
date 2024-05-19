import 'dart:ui';
import 'package:flutter/material.dart';
import '../core/app_export.dart';

String _appTheme = "lightCode";
LightCodeColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

class ThemeHelper {
  // A map of custom color themes supported by the app
  Map<String, LightCodeColors> _supportedCustomColor = {
    'lightCode': LightCodeColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'lightCode': ColorSchemes.lightCodeColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? LightCodeColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.lightCodeColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.whiteA700,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: appTheme.whiteA700.withOpacity(0.85),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          shadowColor: appTheme.black90001.withOpacity(0.15),
          elevation: 1,
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.gray400,
      ),
    );
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.gray60001,
          fontSize: 16.fSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.black90001,
          fontSize: 14.fSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.black90001.withOpacity(0.6),
          fontSize: 12.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        ),
        displayMedium: TextStyle(
          color: appTheme.black900,
          fontSize: 48.fSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w600,
        ),
        headlineLarge: TextStyle(
          color: appTheme.gray90001,
          fontSize: 32.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        headlineSmall: TextStyle(
          color: appTheme.black900,
          fontSize: 24.fSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w600,
        ),
        labelMedium: TextStyle(
          color: appTheme.gray60001,
          fontSize: 11.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          color: appTheme.black900,
          fontSize: 20.fSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w600,
        ),
        titleMedium: TextStyle(
          color: appTheme.black90001,
          fontSize: 18.fSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w600,
        ),
        titleSmall: TextStyle(
          color: appTheme.black90001,
          fontSize: 14.fSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w600,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final lightCodeColorScheme = ColorScheme.light();
}

/// Class containing custom colors for a lightCode theme.
class LightCodeColors {
  // Amber
  Color get amber500 => Color(0XFFFFCA0B);
  Color get amber50001 => Color(0XFFFBBC04);
  Color get amberA100 => Color(0XFFFEE17A);
  Color get amberA400 => Color(0XFFFFC803);
  Color get amberA700 => Color(0XFFFFA800);
// Black
  Color get black900 => Color(0XFF090909);
  Color get black90001 => Color(0XFF000000);
// Blue
  Color get blue50 => Color(0XFFDFE8FF);
  Color get blueA100 => Color(0XFF98B2FF);
  Color get blueA10001 => Color(0XFF75B4FF);
// BlueGray
  Color get blueGray400 => Color(0XFF888888);
  Color get blueGray900 => Color(0XFF333333);
// DeepOrange
  Color get deepOrange100 => Color(0XFFFFBCBC);
  Color get deepOrange200 => Color(0XFFFFBB9E);
  Color get deepOrange50 => Color(0XFFFFECE4);
  Color get deepOrangeA100 => Color(0XFFFFAE81);
// Gray
  Color get gray100 => Color(0XFFF4F4F4);
  Color get gray10001 => Color(0XFFF5F5F5);
  Color get gray400 => Color(0XFFBDBDBD);
  Color get gray600 => Color(0XFF7A7A7A);
  Color get gray60001 => Color(0XFF828282);
  Color get gray900 => Color(0XFF2B2828);
  Color get gray90001 => Color(0XFF171717);
  Color get gray90002 => Color(0XFF031819);
// Indigo
  Color get indigo100 => Color(0XFFC6C7F8);
  Color get indigoA100 => Color(0XFF97AEFF);
// LightGreen
  Color get lightGreen400 => Color(0XFF95E852);
  Color get lightGreen50 => Color(0XFFF1FFE2);
  Color get lightGreenA100 => Color(0XFFC7F296);
  Color get lightGreenA20089 => Color(0X89A8FF76);
  Color get lightGreenA70033 => Color(0X3362DB44);
// Pink
  Color get pink200 => Color(0XFFF598A7);
// Red
  Color get red300 => Color(0XFFE46962);
  Color get red700 => Color(0XFFD1212F);
  Color get red70001 => Color(0XFFD12030);
  Color get redA100 => Color(0XFFFF797A);
  Color get redA700 => Color(0XFFDB0B0B);
// White
  Color get whiteA700 => Color(0XFFFFFFFF);
// Yellow
  Color get yellow100 => Color(0XFFFEF1CA);
  Color get yellow400 => Color(0XFFFFEF61);
}
