import 'package:flutter/material.dart';
import 'package:rocketfly/presentation/onboarding_screen_three_one_screen/models/onboarding_screen_three_one_model.dart';

/// A provider class for the OnboardingScreenThreeOneScreen.
///
/// This provider manages the state of the OnboardingScreenThreeOneScreen, including the
/// current onboardingScreenThreeOneModelObj
class OnboardingScreenThreeOneProvider extends ChangeNotifier {
  OnboardingScreenThreeOneModel onboardingScreenThreeOneModelObj =
      OnboardingScreenThreeOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
