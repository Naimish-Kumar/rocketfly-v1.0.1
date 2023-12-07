import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/presentation/splash_screen_one_screen/models/splash_screen_one_model.dart';

/// A provider class for the SplashScreenOneScreen.
///
/// This provider manages the state of the SplashScreenOneScreen, including the
/// current splashScreenOneModelObj
class SplashScreenOneProvider extends ChangeNotifier {
  SplashScreenOneModel splashScreenOneModelObj = SplashScreenOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
