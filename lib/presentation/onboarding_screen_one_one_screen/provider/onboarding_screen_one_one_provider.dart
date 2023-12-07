import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/presentation/onboarding_screen_one_one_screen/models/onboarding_screen_one_one_model.dart';

/// A provider class for the OnboardingScreenOneOneScreen.
///
/// This provider manages the state of the OnboardingScreenOneOneScreen, including the
/// current onboardingScreenOneOneModelObj
class OnboardingScreenOneOneProvider extends ChangeNotifier {
  OnboardingScreenOneOneModel onboardingScreenOneOneModelObj =
      OnboardingScreenOneOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
