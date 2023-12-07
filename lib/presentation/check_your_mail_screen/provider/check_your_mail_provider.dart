import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/presentation/check_your_mail_screen/models/check_your_mail_model.dart';

/// A provider class for the CheckYourMailScreen.
///
/// This provider manages the state of the CheckYourMailScreen, including the
/// current checkYourMailModelObj
class CheckYourMailProvider extends ChangeNotifier {
  CheckYourMailModel checkYourMailModelObj = CheckYourMailModel();

  @override
  void dispose() {
    super.dispose();
  }
}
