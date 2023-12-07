import 'package:flutter/material.dart';import 'package:rocketfly/presentation/sign_in_screen/models/sign_in_model.dart';/// A provider class for the SignInScreen.
///
/// This provider manages the state of the SignInScreen, including the
/// current signInModelObj

// ignore_for_file: must_be_immutable
class SignInProvider extends ChangeNotifier {TextEditingController emailController = TextEditingController();

TextEditingController passwordController = TextEditingController();

SignInModel signInModelObj = SignInModel();

bool isShowPassword = true;

bool rememberMe = false;

@override void dispose() { super.dispose(); emailController.dispose(); passwordController.dispose(); } 
void changePasswordVisibility() { isShowPassword = !isShowPassword; notifyListeners(); } 
void changeCheckBox(bool value) { rememberMe = value; notifyListeners(); } 
 }
