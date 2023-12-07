import 'package:flutter/material.dart';import 'package:rocketfly/presentation/setting_screen/models/setting_model.dart';/// A provider class for the SettingScreen.
///
/// This provider manages the state of the SettingScreen, including the
/// current settingModelObj

// ignore_for_file: must_be_immutable
class SettingProvider extends ChangeNotifier {SettingModel settingModelObj = SettingModel();

bool isSelectedSwitch = false;

@override void dispose() { super.dispose(); } 
void changeSwitchBox(bool value) { isSelectedSwitch = value; notifyListeners(); } 
 }
