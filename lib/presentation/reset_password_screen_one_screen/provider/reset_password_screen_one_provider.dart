import 'package:flutter/material.dart';import 'package:rocketfly/core/app_export.dart';import 'package:rocketfly/presentation/reset_password_screen_one_screen/models/reset_password_screen_one_model.dart';/// A provider class for the ResetPasswordScreenOneScreen.
///
/// This provider manages the state of the ResetPasswordScreenOneScreen, including the
/// current resetPasswordScreenOneModelObj

// ignore_for_file: must_be_immutable
class ResetPasswordScreenOneProvider extends ChangeNotifier {TextEditingController passwordController = TextEditingController();

TextEditingController confirmpasswordController = TextEditingController();

ResetPasswordScreenOneModel resetPasswordScreenOneModelObj = ResetPasswordScreenOneModel();

bool isShowPassword = true;

bool isShowPassword1 = true;

@override void dispose() { super.dispose(); passwordController.dispose(); confirmpasswordController.dispose(); } 
void changePasswordVisibility() { isShowPassword = !isShowPassword; notifyListeners(); } 
void changePasswordVisibility1() { isShowPassword1 = !isShowPassword1; notifyListeners(); } 
 }
