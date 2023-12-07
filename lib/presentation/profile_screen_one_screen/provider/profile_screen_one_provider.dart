import 'package:flutter/material.dart';
import 'package:rocketfly/presentation/profile_screen_one_screen/models/profile_screen_one_model.dart';

/// A provider class for the ProfileScreenOneScreen.
///
/// This provider manages the state of the ProfileScreenOneScreen, including the
/// current profileScreenOneModelObj
class ProfileScreenOneProvider extends ChangeNotifier {
  ProfileScreenOneModel profileScreenOneModelObj = ProfileScreenOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
