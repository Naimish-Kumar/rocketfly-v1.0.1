import 'package:flutter/material.dart';import 'package:rocketfly/presentation/sign_up_screen_one_screen/models/sign_up_screen_one_model.dart';/// A provider class for the SignUpScreenOneScreen.
///
/// This provider manages the state of the SignUpScreenOneScreen, including the
/// current signUpScreenOneModelObj

// ignore_for_file: must_be_immutable
class SignUpScreenOneProvider extends ChangeNotifier {TextEditingController nameController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController mobileNumberController = TextEditingController();

TextEditingController passwordController = TextEditingController();

TextEditingController confirmpasswordController = TextEditingController();

SignUpScreenOneModel signUpScreenOneModelObj = SignUpScreenOneModel();

bool isShowPassword = true;

bool isShowPassword1 = true;

bool rememberMe = false;

@override void dispose() { super.dispose(); nameController.dispose(); emailController.dispose(); mobileNumberController.dispose(); passwordController.dispose(); confirmpasswordController.dispose(); } 
void changePasswordVisibility() { isShowPassword = !isShowPassword; notifyListeners(); } 
void changePasswordVisibility1() { isShowPassword1 = !isShowPassword1; notifyListeners(); } 
void changeCheckBox(bool value) { rememberMe = value; notifyListeners(); } 
 }
