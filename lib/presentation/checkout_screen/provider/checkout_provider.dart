import 'package:flutter/material.dart';import 'package:rocketfly/core/app_export.dart';import 'package:rocketfly/presentation/checkout_screen/models/checkout_model.dart';/// A provider class for the CheckoutScreen.
///
/// This provider manages the state of the CheckoutScreen, including the
/// current checkoutModelObj

// ignore_for_file: must_be_immutable
class CheckoutProvider extends ChangeNotifier {TextEditingController couponCodeController = TextEditingController();

CheckoutModel checkoutModelObj = CheckoutModel();

@override void dispose() { super.dispose(); couponCodeController.dispose(); } 
 }
