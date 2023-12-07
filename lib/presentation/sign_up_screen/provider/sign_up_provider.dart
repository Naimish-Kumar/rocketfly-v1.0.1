import 'package:flutter/material.dart';import 'package:rocketfly/core/app_export.dart';import 'package:rocketfly/presentation/sign_up_screen/models/sign_up_model.dart';/// A provider class for the SignUpScreen.
///
/// This provider manages the state of the SignUpScreen, including the
/// current signUpModelObj

// ignore_for_file: must_be_immutable
class SignUpProvider extends ChangeNotifier {TextEditingController nameEditTextController = TextEditingController();

TextEditingController emailEditTextController = TextEditingController();

TextEditingController mobileNumberEditTextController = TextEditingController();

TextEditingController passwordEditTextController = TextEditingController();

TextEditingController confirmpasswordEditTextController = TextEditingController();

SignUpModel signUpModelObj = SignUpModel();

bool isShowPassword = true;

bool isShowPassword1 = true;

bool rememberMeCheckBox = false;

@override void dispose() { super.dispose(); nameEditTextController.dispose(); emailEditTextController.dispose(); mobileNumberEditTextController.dispose(); passwordEditTextController.dispose(); confirmpasswordEditTextController.dispose(); } 
void changePasswordVisibility() { isShowPassword = !isShowPassword; notifyListeners(); } 
void changePasswordVisibility1() { isShowPassword1 = !isShowPassword1; notifyListeners(); } 
void changeCheckBox(bool value) { rememberMeCheckBox = value; notifyListeners(); } 
 }
