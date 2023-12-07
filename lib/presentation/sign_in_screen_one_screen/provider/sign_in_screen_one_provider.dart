import 'package:flutter/material.dart';import 'package:rocketfly/core/app_export.dart';import 'package:rocketfly/presentation/sign_in_screen_one_screen/models/sign_in_screen_one_model.dart';/// A provider class for the SignInScreenOneScreen.
///
/// This provider manages the state of the SignInScreenOneScreen, including the
/// current signInScreenOneModelObj

// ignore_for_file: must_be_immutable
class SignInScreenOneProvider extends ChangeNotifier {TextEditingController emailController = TextEditingController();

TextEditingController passwordController = TextEditingController();

SignInScreenOneModel signInScreenOneModelObj = SignInScreenOneModel();

bool isShowPassword = true;

bool rememberMe = false;

@override void dispose() { super.dispose(); emailController.dispose(); passwordController.dispose(); } 
void changePasswordVisibility() { isShowPassword = !isShowPassword; notifyListeners(); } 
void changeCheckBox(bool value) { rememberMe = value; notifyListeners(); } 
 }
