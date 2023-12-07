import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/presentation/verify_phone_number_screen/models/verify_phone_number_model.dart';

/// A provider class for the VerifyPhoneNumberScreen.
///
/// This provider manages the state of the VerifyPhoneNumberScreen, including the
/// current verifyPhoneNumberModelObj
class VerifyPhoneNumberProvider extends ChangeNotifier {
  TextEditingController phoneNumberController = TextEditingController();

  VerifyPhoneNumberModel verifyPhoneNumberModelObj = VerifyPhoneNumberModel();

  @override
  void dispose() {
    super.dispose();
    phoneNumberController.dispose();
  }
}
