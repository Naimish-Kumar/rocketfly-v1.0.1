import 'package:flutter/material.dart';import 'package:rocketfly/core/app_export.dart';import 'package:rocketfly/presentation/payment_not_successful_screen/models/payment_not_successful_model.dart';/// A provider class for the PaymentNotSuccessfulScreen.
///
/// This provider manages the state of the PaymentNotSuccessfulScreen, including the
/// current paymentNotSuccessfulModelObj

// ignore_for_file: must_be_immutable
class PaymentNotSuccessfulProvider extends ChangeNotifier {PaymentNotSuccessfulModel paymentNotSuccessfulModelObj = PaymentNotSuccessfulModel();

@override void dispose() { super.dispose(); } 
 }
