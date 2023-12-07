import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:rocketfly/core/app_export.dart';

class CustomPinCodeTextField extends StatelessWidget {
  CustomPinCodeTextField({
    Key? key,
    required this.context,
    required this.onChanged,
    this.alignment,
    this.controller,
    this.textStyle,
    this.hintStyle,
    this.validator,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final BuildContext context;

  final TextEditingController? controller;

  final TextStyle? textStyle;

  final TextStyle? hintStyle;

  Function(String) onChanged;

  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: pinCodeTextFieldWidget,
          )
        : pinCodeTextFieldWidget;
  }

  Widget get pinCodeTextFieldWidget => PinCodeTextField(
        appContext: context,
        controller: controller,
        length: 4,
        keyboardType: TextInputType.number,
        textStyle: textStyle ?? CustomTextStyles.titleLargeLatoErrorContainer,
        hintStyle: hintStyle ?? CustomTextStyles.titleLargeLatoErrorContainer,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
        ],
        pinTheme: PinTheme(
          fieldHeight: 60.h,
          fieldWidth: 48.h,
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              3.h,
            ),
            topRight: Radius.circular(
              4.h,
            ),
            bottomLeft: Radius.circular(
              4.h,
            ),
            bottomRight: Radius.circular(
              4.h,
            ),
          ),
          selectedColor: theme.colorScheme.primary,
          selectedFillColor: theme.colorScheme.onPrimaryContainer,
          inactiveColor: Colors.transparent,
          activeColor: Colors.transparent,
        ),
        onChanged: (value) => onChanged(value),
        validator: validator,
      );
}
