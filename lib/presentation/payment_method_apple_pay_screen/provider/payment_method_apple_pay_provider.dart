import 'package:flutter/material.dart';import 'package:rocketfly/core/app_export.dart';import 'package:rocketfly/presentation/payment_method_apple_pay_screen/models/payment_method_apple_pay_model.dart';/// A provider class for the PaymentMethodApplePayScreen.
///
/// This provider manages the state of the PaymentMethodApplePayScreen, including the
/// current paymentMethodApplePayModelObj

// ignore_for_file: must_be_immutable
class PaymentMethodApplePayProvider extends ChangeNotifier {TextEditingController enterAppleIDController = TextEditingController();

PaymentMethodApplePayModel paymentMethodApplePayModelObj = PaymentMethodApplePayModel();

bool isSelectedSwitch = false;

@override void dispose() { super.dispose(); enterAppleIDController.dispose(); } 
void changeSwitchBox(bool value) { isSelectedSwitch = value; notifyListeners(); } 
 }
