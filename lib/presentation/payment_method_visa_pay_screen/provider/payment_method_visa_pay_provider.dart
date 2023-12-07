import 'package:flutter/material.dart';import 'package:rocketfly/core/app_export.dart';import 'package:rocketfly/presentation/payment_method_visa_pay_screen/models/payment_method_visa_pay_model.dart';/// A provider class for the PaymentMethodVisaPayScreen.
///
/// This provider manages the state of the PaymentMethodVisaPayScreen, including the
/// current paymentMethodVisaPayModelObj

// ignore_for_file: must_be_immutable
class PaymentMethodVisaPayProvider extends ChangeNotifier {PaymentMethodVisaPayModel paymentMethodVisaPayModelObj = PaymentMethodVisaPayModel();

@override void dispose() { super.dispose(); } 
 }
