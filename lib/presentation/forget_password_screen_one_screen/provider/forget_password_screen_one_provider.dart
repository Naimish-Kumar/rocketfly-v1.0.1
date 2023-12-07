import 'package:flutter/material.dart';import 'package:rocketfly/core/app_export.dart';import 'package:rocketfly/presentation/forget_password_screen_one_screen/models/forget_password_screen_one_model.dart';/// A provider class for the ForgetPasswordScreenOneScreen.
///
/// This provider manages the state of the ForgetPasswordScreenOneScreen, including the
/// current forgetPasswordScreenOneModelObj

// ignore_for_file: must_be_immutable
class ForgetPasswordScreenOneProvider extends ChangeNotifier {TextEditingController passwordController = TextEditingController();

ForgetPasswordScreenOneModel forgetPasswordScreenOneModelObj = ForgetPasswordScreenOneModel();

@override void dispose() { super.dispose(); passwordController.dispose(); } 
 }
