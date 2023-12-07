import 'package:flutter/material.dart';import 'package:rocketfly/presentation/payment_method_paypal_screen/models/payment_method_paypal_model.dart';/// A provider class for the PaymentMethodPaypalScreen.
///
/// This provider manages the state of the PaymentMethodPaypalScreen, including the
/// current paymentMethodPaypalModelObj

// ignore_for_file: must_be_immutable
class PaymentMethodPaypalProvider extends ChangeNotifier {TextEditingController emailController = TextEditingController();

PaymentMethodPaypalModel paymentMethodPaypalModelObj = PaymentMethodPaypalModel();

bool isSelectedSwitch = false;

@override void dispose() { super.dispose(); emailController.dispose(); } 
void changeSwitchBox(bool value) { isSelectedSwitch = value; notifyListeners(); } 
 }
