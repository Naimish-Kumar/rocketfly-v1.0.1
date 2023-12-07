import 'package:flutter/material.dart';import 'package:rocketfly/core/app_export.dart';import 'package:rocketfly/presentation/payment_successful_screen/models/payment_successful_model.dart';/// A provider class for the PaymentSuccessfulScreen.
///
/// This provider manages the state of the PaymentSuccessfulScreen, including the
/// current paymentSuccessfulModelObj

// ignore_for_file: must_be_immutable
class PaymentSuccessfulProvider extends ChangeNotifier {PaymentSuccessfulModel paymentSuccessfulModelObj = PaymentSuccessfulModel();

@override void dispose() { super.dispose(); } 
 }
