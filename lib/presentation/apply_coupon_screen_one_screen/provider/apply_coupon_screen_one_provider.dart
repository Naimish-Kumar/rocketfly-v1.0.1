import 'package:flutter/material.dart';
import 'package:rocketfly/presentation/apply_coupon_screen_one_screen/models/apply_coupon_screen_one_model.dart';

/// A provider class for the ApplyCouponScreenOneScreen.
///
/// This provider manages the state of the ApplyCouponScreenOneScreen, including the
/// current applyCouponScreenOneModelObj

// ignore_for_file: must_be_immutable
class ApplyCouponScreenOneProvider extends ChangeNotifier {
  TextEditingController couponCodeController = TextEditingController();

  ApplyCouponScreenOneModel applyCouponScreenOneModelObj =
      ApplyCouponScreenOneModel();

  @override
  void dispose() {
    super.dispose();
    couponCodeController.dispose();
  }
}
