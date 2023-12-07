import 'package:flutter/material.dart';
import 'package:rocketfly/presentation/onboarding_screen_two_screen/models/onboarding_screen_two_model.dart';

/// A provider class for the OnboardingScreenTwoScreen.
///
/// This provider manages the state of the OnboardingScreenTwoScreen, including the
/// current onboardingScreenTwoModelObj
class OnboardingScreenTwoProvider extends ChangeNotifier {
  OnboardingScreenTwoModel onboardingScreenTwoModelObj =
      OnboardingScreenTwoModel();

  @override
  void dispose() {
    super.dispose();
  }
}
