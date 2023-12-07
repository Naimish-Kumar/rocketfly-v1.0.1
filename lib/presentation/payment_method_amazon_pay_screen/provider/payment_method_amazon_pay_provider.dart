import 'package:flutter/material.dart';import 'package:rocketfly/core/app_export.dart';import 'package:rocketfly/presentation/payment_method_amazon_pay_screen/models/payment_method_amazon_pay_model.dart';/// A provider class for the PaymentMethodAmazonPayScreen.
///
/// This provider manages the state of the PaymentMethodAmazonPayScreen, including the
/// current paymentMethodAmazonPayModelObj

// ignore_for_file: must_be_immutable
class PaymentMethodAmazonPayProvider extends ChangeNotifier {PaymentMethodAmazonPayModel paymentMethodAmazonPayModelObj = PaymentMethodAmazonPayModel();

@override void dispose() { super.dispose(); } 
 }
