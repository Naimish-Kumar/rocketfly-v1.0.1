import 'package:flutter/material.dart';
import 'package:rocketfly/presentation/apply_coupon_screen/models/apply_coupon_model.dart';

/// A provider class for the ApplyCouponScreen.
///
/// This provider manages the state of the ApplyCouponScreen, including the
/// current applyCouponModelObj

// ignore_for_file: must_be_immutable
class ApplyCouponProvider extends ChangeNotifier {
  TextEditingController couponCodeController = TextEditingController();

  ApplyCouponModel applyCouponModelObj = ApplyCouponModel();

  @override
  void dispose() {
    super.dispose();
    couponCodeController.dispose();
  }
}
