import 'package:flutter/material.dart';import 'package:rocketfly/presentation/notification_screen_one1_screen/models/notification_screen_one1_model.dart';/// A provider class for the NotificationScreenOne1Screen.
///
/// This provider manages the state of the NotificationScreenOne1Screen, including the
/// current notificationScreenOne1ModelObj

// ignore_for_file: must_be_immutable
class NotificationScreenOne1Provider extends ChangeNotifier {NotificationScreenOne1Model notificationScreenOne1ModelObj = NotificationScreenOne1Model();

bool isSelectedSwitch = false;

bool isSelectedSwitch1 = false;

bool isSelectedSwitch2 = false;

bool isSelectedSwitch3 = false;

bool isSelectedSwitch4 = false;

bool isSelectedSwitch5 = false;

bool isSelectedSwitch6 = false;

bool isSelectedSwitch7 = false;

bool isSelectedSwitch8 = false;

@override void dispose() { super.dispose(); } 
void changeSwitchBox(bool value) { isSelectedSwitch = value; notifyListeners(); } 
void changeSwitchBox1(bool value) { isSelectedSwitch1 = value; notifyListeners(); } 
void changeSwitchBox2(bool value) { isSelectedSwitch2 = value; notifyListeners(); } 
void changeSwitchBox3(bool value) { isSelectedSwitch3 = value; notifyListeners(); } 
void changeSwitchBox4(bool value) { isSelectedSwitch4 = value; notifyListeners(); } 
void changeSwitchBox5(bool value) { isSelectedSwitch5 = value; notifyListeners(); } 
void changeSwitchBox6(bool value) { isSelectedSwitch6 = value; notifyListeners(); } 
void changeSwitchBox7(bool value) { isSelectedSwitch7 = value; notifyListeners(); } 
void changeSwitchBox8(bool value) { isSelectedSwitch8 = value; notifyListeners(); } 
 }
