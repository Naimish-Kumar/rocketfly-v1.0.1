import 'package:flutter/material.dart';
import 'package:rocketfly/presentation/privacy_policy_screen_one_screen/models/privacy_policy_screen_one_model.dart';

/// A provider class for the PrivacyPolicyScreenOneScreen.
///
/// This provider manages the state of the PrivacyPolicyScreenOneScreen, including the
/// current privacyPolicyScreenOneModelObj
class PrivacyPolicyScreenOneProvider extends ChangeNotifier {
  TextEditingController arrowleftController = TextEditingController();

  PrivacyPolicyScreenOneModel privacyPolicyScreenOneModelObj =
      PrivacyPolicyScreenOneModel();

  @override
  void dispose() {
    super.dispose();
    arrowleftController.dispose();
  }
}
