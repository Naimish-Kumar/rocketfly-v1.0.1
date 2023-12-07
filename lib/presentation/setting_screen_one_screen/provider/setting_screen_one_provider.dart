import 'package:flutter/material.dart';import 'package:rocketfly/core/app_export.dart';import 'package:rocketfly/presentation/setting_screen_one_screen/models/setting_screen_one_model.dart';/// A provider class for the SettingScreenOneScreen.
///
/// This provider manages the state of the SettingScreenOneScreen, including the
/// current settingScreenOneModelObj

// ignore_for_file: must_be_immutable
class SettingScreenOneProvider extends ChangeNotifier {SettingScreenOneModel settingScreenOneModelObj = SettingScreenOneModel();

bool isSelectedSwitch = false;

@override void dispose() { super.dispose(); } 
void changeSwitchBox(bool value) { isSelectedSwitch = value; notifyListeners(); } 
 }
