import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/presentation/onboarding_screen_three_screen/models/onboarding_screen_three_model.dart';

/// A provider class for the OnboardingScreenThreeScreen.
///
/// This provider manages the state of the OnboardingScreenThreeScreen, including the
/// current onboardingScreenThreeModelObj
class OnboardingScreenThreeProvider extends ChangeNotifier {
  OnboardingScreenThreeModel onboardingScreenThreeModelObj =
      OnboardingScreenThreeModel();

  @override
  void dispose() {
    super.dispose();
  }
}
