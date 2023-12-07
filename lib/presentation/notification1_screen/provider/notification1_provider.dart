import 'package:flutter/material.dart';import 'package:rocketfly/core/app_export.dart';import 'package:rocketfly/presentation/notification1_screen/models/notification1_model.dart';/// A provider class for the Notification1Screen.
///
/// This provider manages the state of the Notification1Screen, including the
/// current notification1ModelObj

// ignore_for_file: must_be_immutable
class Notification1Provider extends ChangeNotifier {Notification1Model notification1ModelObj = Notification1Model();

bool isSelectedSwitch = false;

bool isSelectedSwitch1 = false;

bool isSelectedSwitch2 = false;

@override void dispose() { super.dispose(); } 
void changeSwitchBox(bool value) { isSelectedSwitch = value; notifyListeners(); } 
void changeSwitchBox1(bool value) { isSelectedSwitch1 = value; notifyListeners(); } 
void changeSwitchBox2(bool value) { isSelectedSwitch2 = value; notifyListeners(); } 
 }
