import 'package:flutter/material.dart';
import 'package:rocketfly/presentation/about_us_screen_one_screen/models/about_us_screen_one_model.dart';

/// A provider class for the AboutUsScreenOneScreen.
///
/// This provider manages the state of the AboutUsScreenOneScreen, including the
/// current aboutUsScreenOneModelObj

// ignore_for_file: must_be_immutable
class AboutUsScreenOneProvider extends ChangeNotifier {
  AboutUsScreenOneModel aboutUsScreenOneModelObj = AboutUsScreenOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
