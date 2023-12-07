import 'package:flutter/material.dart';
import 'package:rocketfly/presentation/onboarding_screen_two_one_screen/models/onboarding_screen_two_one_model.dart';

/// A provider class for the OnboardingScreenTwoOneScreen.
///
/// This provider manages the state of the OnboardingScreenTwoOneScreen, including the
/// current onboardingScreenTwoOneModelObj
class OnboardingScreenTwoOneProvider extends ChangeNotifier {
  OnboardingScreenTwoOneModel onboardingScreenTwoOneModelObj =
      OnboardingScreenTwoOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
