import 'package:flutter/material.dart';import 'package:rocketfly/core/app_export.dart';import 'package:rocketfly/presentation/payment_method_g_pay_screen/models/payment_method_g_pay_model.dart';/// A provider class for the PaymentMethodGPayScreen.
///
/// This provider manages the state of the PaymentMethodGPayScreen, including the
/// current paymentMethodGPayModelObj

// ignore_for_file: must_be_immutable
class PaymentMethodGPayProvider extends ChangeNotifier {PaymentMethodGPayModel paymentMethodGPayModelObj = PaymentMethodGPayModel();

@override void dispose() { super.dispose(); } 
 }
