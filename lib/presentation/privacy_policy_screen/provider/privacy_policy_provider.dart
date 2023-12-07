import 'package:flutter/material.dart';
import 'package:rocketfly/presentation/privacy_policy_screen/models/privacy_policy_model.dart';

/// A provider class for the PrivacyPolicyScreen.
///
/// This provider manages the state of the PrivacyPolicyScreen, including the
/// current privacyPolicyModelObj
class PrivacyPolicyProvider extends ChangeNotifier {
  TextEditingController arrowleftController = TextEditingController();

  PrivacyPolicyModel privacyPolicyModelObj = PrivacyPolicyModel();

  @override
  void dispose() {
    super.dispose();
    arrowleftController.dispose();
  }
}
