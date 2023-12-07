import 'package:flutter/material.dart';import 'package:rocketfly/presentation/forget_password_screen/models/forget_password_model.dart';/// A provider class for the ForgetPasswordScreen.
///
/// This provider manages the state of the ForgetPasswordScreen, including the
/// current forgetPasswordModelObj

// ignore_for_file: must_be_immutable
class ForgetPasswordProvider extends ChangeNotifier {TextEditingController passwordController = TextEditingController();

ForgetPasswordModel forgetPasswordModelObj = ForgetPasswordModel();

@override void dispose() { super.dispose(); passwordController.dispose(); } 
 }
