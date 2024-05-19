import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get sFProDisplay {
    return copyWith(
      fontFamily: 'SF Pro Display',
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeBluegray900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray900,
      );
  static get bodyLargeRed300 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.red300,
      );
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumGray60001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray60001,
      );
  static get bodyMediumGray900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray900,
      );
  static get bodyMediumInterGray90001 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.gray90001,
      );
  static get bodySmallInterWhiteA700 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodySmallSFProDisplayBlack90001 =>
      theme.textTheme.bodySmall!.sFProDisplay.copyWith(
        color: appTheme.black90001,
      );
  static get bodySmallSFProDisplayRed700 =>
      theme.textTheme.bodySmall!.sFProDisplay.copyWith(
        color: appTheme.red700,
      );
// Headline text style
  static get headlineSmallBlack90001 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black90001,
      );
// Label text style
  static get labelMediumRed700 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.red700,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumSFProDisplay =>
      theme.textTheme.labelMedium!.sFProDisplay;
  static get labelMediumSFProDisplayGray90002 =>
      theme.textTheme.labelMedium!.sFProDisplay.copyWith(
        color: appTheme.gray90002,
      );
  static get labelMediumSFProDisplayRed700 =>
      theme.textTheme.labelMedium!.sFProDisplay.copyWith(
        color: appTheme.red700,
      );
// Title text style
  static get titleLargeBlack90001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black90001,
      );
  static get titleMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 16.fSize,
      );
  static get titleSmallGray60001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray60001,
      );
}
