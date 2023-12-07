import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(16.h),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get outlineOnError => BoxDecoration(
        borderRadius: BorderRadius.circular(8.h),
        border: Border.all(
          color: theme.colorScheme.onError.withOpacity(1),
          width: 2.h,
        ),
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray700,
        borderRadius: BorderRadius.circular(14.h),
      );
  static BoxDecoration get fillGrayTL24 => BoxDecoration(
        color: appTheme.gray700,
        borderRadius: BorderRadius.circular(24.h),
      );
  static BoxDecoration get fillOnSecondaryContainer => BoxDecoration(
        color: theme.colorScheme.onSecondaryContainer,
        borderRadius: BorderRadius.circular(24.h),
      );
  static BoxDecoration get gradientPrimaryToPrimary => BoxDecoration(
        borderRadius: BorderRadius.circular(24.h),
        gradient: LinearGradient(
          begin: Alignment(0.0, 0),
          end: Alignment(1.0, 1),
          colors: [
            theme.colorScheme.primary.withOpacity(0.6),
            theme.colorScheme.primary.withOpacity(0.1),
          ],
        ),
      );
  static BoxDecoration get fillDeepPurpleA => BoxDecoration(
        color: appTheme.deepPurpleA400,
        borderRadius: BorderRadius.circular(20.h),
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        borderRadius: BorderRadius.circular(8.h),
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 2.h,
        ),
      );
  static BoxDecoration get fillErrorContainer => BoxDecoration(
        color: theme.colorScheme.errorContainer,
        borderRadius: BorderRadius.circular(14.h),
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray100,
        borderRadius: BorderRadius.circular(32.h),
      );
  static BoxDecoration get fillPrimaryTL4 => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(4.h),
      );
  static BoxDecoration get fillErrorContainerTL4 => BoxDecoration(
        color: theme.colorScheme.errorContainer,
        borderRadius: BorderRadius.circular(4.h),
      );
  static BoxDecoration get fillBlueGrayTL24 => BoxDecoration(
        color: appTheme.blueGray100,
        borderRadius: BorderRadius.circular(24.h),
      );
  static BoxDecoration get fillErrorContainerTL24 => BoxDecoration(
        color: theme.colorScheme.errorContainer,
        borderRadius: BorderRadius.circular(24.h),
      );
  static BoxDecoration get fillPrimaryTL24 => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(24.h),
      );
  static BoxDecoration get fillYellow => BoxDecoration(
        color: appTheme.yellow900,
        borderRadius: BorderRadius.circular(8.h),
      );
  static BoxDecoration get fillPrimaryTL8 => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(8.h),
      );
  static BoxDecoration get fillPrimaryTL20 => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(20.h),
      );
}
