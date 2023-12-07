import 'package:flutter/material.dart';import 'package:rocketfly/presentation/reset_password_screen/models/reset_password_model.dart';/// A provider class for the ResetPasswordScreen.
///
/// This provider manages the state of the ResetPasswordScreen, including the
/// current resetPasswordModelObj

// ignore_for_file: must_be_immutable
class ResetPasswordProvider extends ChangeNotifier {TextEditingController passwordController = TextEditingController();

TextEditingController confirmpasswordController = TextEditingController();

ResetPasswordModel resetPasswordModelObj = ResetPasswordModel();

bool isShowPassword = true;

bool isShowPassword1 = true;

@override void dispose() { super.dispose(); passwordController.dispose(); confirmpasswordController.dispose(); } 
void changePasswordVisibility() { isShowPassword = !isShowPassword; notifyListeners(); } 
void changePasswordVisibility1() { isShowPassword1 = !isShowPassword1; notifyListeners(); } 
 }
