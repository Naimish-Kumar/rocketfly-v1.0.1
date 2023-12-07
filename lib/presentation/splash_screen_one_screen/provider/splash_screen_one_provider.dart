import 'package:flutter/material.dart';
import 'package:rocketfly/presentation/splash_screen_one_screen/models/splash_screen_one_model.dart';

class SplashScreenOneProvider extends ChangeNotifier {
  SplashScreenOneModel splashScreenOneModelObj = SplashScreenOneModel();
   bool _showSplashScreen = true;

  bool get showSplashScreen => _showSplashScreen;

  void hideSplashScreen() {
    _showSplashScreen = false;
    notifyListeners();
  }


  @override
  void dispose() {
    super.dispose();
  }
}
