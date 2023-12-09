import 'package:flutter/cupertino.dart';
import 'package:rocketfly/core/app_export.dart';

// ignore: must_be_immutable
class CustomSwitch extends StatelessWidget {
  CustomSwitch({
    Key? key,
    required this.onChange,
    this.alignment,
    this.value,
    this.width,
    this.height,
    this.margin,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  bool? value;

  final Function(bool) onChange;

  final double? width;

  final double? height;

  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        margin: margin,
        child: alignment != null
            ? Align(
                alignment: alignment ?? Alignment.center,
                child: switchWidget,
              )
            : switchWidget);
  }

  Widget get switchWidget => CupertinoSwitch(
        value: value ?? false,
        trackColor: theme.colorScheme.errorContainer.withOpacity(0.42),
        thumbColor: (value ?? false)
            ? theme.colorScheme.primary
            : theme.colorScheme.primary,
        activeColor: appTheme.yellow900,
        onChanged: (value) {
          onChange(value);
        },
      );
}
