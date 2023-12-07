import 'package:rocketfly/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillDeepPurpleA => ElevatedButton.styleFrom(
        backgroundColor: appTheme.deepPurpleA400,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.h),
        ),
      );
  static ButtonStyle get fillErrorContainer => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.errorContainer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.h),
        ),
      );
  static ButtonStyle get fillErrorContainerTL8 => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.errorContainer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.h),
        ),
      );
  static ButtonStyle get fillGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray700,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.h),
        ),
      );
  static ButtonStyle get fillGrayTL8 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray700,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.h),
        ),
      );
  static ButtonStyle get fillOnError => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.onError.withOpacity(1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.h),
        ),
      );
  static ButtonStyle get fillPrimaryTL4 => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.h),
        ),
      );
  static ButtonStyle get fillYellow => ElevatedButton.styleFrom(
        backgroundColor: appTheme.yellow900,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.h),
        ),
      );

  // Gradient button style
  static BoxDecoration get gradientDeepPurpleAToDeepPurpleADecoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(4.h),
        gradient: LinearGradient(
          begin: Alignment(0.0, 0),
          end: Alignment(1.0, 1),
          colors: [
            appTheme.deepPurpleA400,
            appTheme.deepPurpleA400,
          ],
        ),
      );
  static BoxDecoration get gradientOnErrorToOnErrorDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(4.h),
        gradient: LinearGradient(
          begin: Alignment(0.0, 0),
          end: Alignment(1.0, 1),
          colors: [
            theme.colorScheme.onError.withOpacity(0.8),
            theme.colorScheme.onError.withOpacity(0.2),
          ],
        ),
      );

  // Outline button style
  static ButtonStyle get outlineOnError => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(
          color: theme.colorScheme.onError.withOpacity(1),
          width: 2,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.h),
        ),
      );
  static ButtonStyle get outlinePrimaryTL4 => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(
          color: theme.colorScheme.primary,
          width: 2,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.h),
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
