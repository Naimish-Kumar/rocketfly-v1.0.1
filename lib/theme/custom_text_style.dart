import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLarge16 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 16.fSize,
      );
  static get bodyLargeGray700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray700,
      );
  static get bodyLargeGray70016 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray700,
        fontSize: 16.fSize,
      );
  static get bodyLargeOnError => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onError.withOpacity(1),
      );
  static get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumErrorContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get bodyMediumGray700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray700,
      );
  static get bodyMediumGreen400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.green400,
      );
  static get bodyMediumOnError => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onError.withOpacity(1),
      );
  static get bodyMediumOnError_1 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onError.withOpacity(1),
      );
  static get bodyMediumOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  // Headline text style
  static get headlineLargeDeeppurpleA400 =>
      theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.deepPurpleA400,
      );
  static get headlineLargeLato => theme.textTheme.headlineLarge!.lato.copyWith(
        fontSize: 30.fSize,
      );
  static get headlineLargeLatoOnSecondaryContainer =>
      theme.textTheme.headlineLarge!.lato.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontSize: 30.fSize,
      );
  static get headlineLargeMedium => theme.textTheme.headlineLarge!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get headlineLargeOnError => theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.onError.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get headlineLargeOnError_1 => theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.onError.withOpacity(1),
      );
  static get headlineLargeRegular => theme.textTheme.headlineLarge!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallMedium => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get headlineSmallOnError => theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onError.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get headlineSmallOnErrorSemiBold =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onError.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallOnError_1 => theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onError.withOpacity(1),
      );
  static get headlineSmallOnSecondaryContainer =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
      );
  static get headlineSmallSemiBold => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
  // Label text style
  static get labelLargeDeeppurpleA400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.deepPurpleA400,
      );
  static get labelLargeGray700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray700,
      );
  static get labelLargeGray700_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray700,
      );
  static get labelLargeOnError => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onError.withOpacity(1),
      );
  static get labelLargeOnErrorSemiBold => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onError.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get labelLargeOnPrimaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeOnPrimaryContainer_1 =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get labelLargeOnSecondaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get labelLargePrimary_1 => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelMediumErrorContainer => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumErrorContainer_1 =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get labelMediumGray700 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray700,
      );
  static get labelMediumOnError => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onError.withOpacity(1),
      );
  static get labelMediumOnPrimaryContainer =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w600,
      );
  // Title text style
  static get titleLargeDeeppurpleA400 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.deepPurpleA400,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeErrorContainer => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeGray700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeLato => theme.textTheme.titleLarge!.lato.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleLargeLatoErrorContainer =>
      theme.textTheme.titleLarge!.lato.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get titleLargeLatoGreen400 =>
      theme.textTheme.titleLarge!.lato.copyWith(
        color: appTheme.green400,
      );
  static get titleLargeLatoRegular => theme.textTheme.titleLarge!.lato.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleLargeOnError => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onError.withOpacity(1),
      );
  static get titleLargeOnErrorRegular => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onError.withOpacity(1),
        fontWeight: FontWeight.w400,
      );
  static get titleLargeOnErrorSemiBold => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onError.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleLargeOnPrimaryContainer =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get titleLargeOnSecondaryContainer =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeRegular => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleLargeSemiBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
      );
  static get titleMediumDeeppurpleA100 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.deepPurpleA100,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGray700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGray70018 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray700,
        fontSize: 18.fSize,
      );
  static get titleMediumGray700SemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray700,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGray700_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray700,
      );
  static get titleMediumGray700_2 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray700,
      );
  static get titleMediumLeagueSpartan =>
      theme.textTheme.titleMedium!.leagueSpartan;
  static get titleMediumLeagueSpartanGray700 =>
      theme.textTheme.titleMedium!.leagueSpartan.copyWith(
        color: appTheme.gray700,
      );
  static get titleMediumLeagueSpartanOnError =>
      theme.textTheme.titleMedium!.leagueSpartan.copyWith(
        color: theme.colorScheme.onError.withOpacity(1),
        fontSize: 18.fSize,
      );
  static get titleMediumLeagueSpartanOnError_1 =>
      theme.textTheme.titleMedium!.leagueSpartan.copyWith(
        color: theme.colorScheme.onError.withOpacity(1),
      );
  static get titleMediumLeagueSpartanOnSecondaryContainer =>
      theme.textTheme.titleMedium!.leagueSpartan.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontSize: 18.fSize,
      );
  static get titleMediumLeagueSpartanOnSecondaryContainer_1 =>
      theme.textTheme.titleMedium!.leagueSpartan.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
      );
  static get titleMediumLeagueSpartanPrimary =>
      theme.textTheme.titleMedium!.leagueSpartan.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 18.fSize,
      );
  static get titleMediumLeagueSpartanPrimary_1 =>
      theme.textTheme.titleMedium!.leagueSpartan.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumLeagueSpartanYellow900 =>
      theme.textTheme.titleMedium!.leagueSpartan.copyWith(
        color: appTheme.yellow900,
        fontSize: 18.fSize,
      );
  static get titleMediumLeagueSpartanYellow900_1 =>
      theme.textTheme.titleMedium!.leagueSpartan.copyWith(
        color: appTheme.yellow900,
      );
  static get titleMediumOnError => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onError.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOnErrorSemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onError.withOpacity(1),
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOnError_1 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onError.withOpacity(1),
      );
  static get titleMediumOnSecondaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOnSecondaryContainerSemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPinkA100 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.pinkA100,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPrimarySemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPrimarySemiBold_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPrimary_1 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumSemiBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumYellow900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.yellow900,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallErrorContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get titleSmallErrorContainerSemiBold =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallErrorContainer_1 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get titleSmallGray700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallGray700_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray700,
      );
  static get titleSmallGray700_2 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray700,
      );
  static get titleSmallGreen400 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.green400,
      );
  static get titleSmallOnError => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onError.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallOnErrorSemiBold => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onError.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallOnError_1 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onError.withOpacity(1),
      );
  static get titleSmallOnError_2 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onError.withOpacity(1),
      );
  static get titleSmallOnPrimaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get titleSmallOnPrimaryContainerSemiBold =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPoppinsGreenA700 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.greenA700,
      );
  static get titleSmallSemiBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleSmallSemiBold_1 => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get lato {
    return copyWith(
      fontFamily: 'Lato',
    );
  }

  TextStyle get leagueSpartan {
    return copyWith(
      fontFamily: 'League Spartan',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
