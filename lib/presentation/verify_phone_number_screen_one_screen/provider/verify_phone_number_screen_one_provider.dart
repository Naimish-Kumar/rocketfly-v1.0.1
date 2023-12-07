import 'package:flutter/material.dart';import 'package:rocketfly/presentation/verify_phone_number_screen_one_screen/models/verify_phone_number_screen_one_model.dart';/// A provider class for the VerifyPhoneNumberScreenOneScreen.
///
/// This provider manages the state of the VerifyPhoneNumberScreenOneScreen, including the
/// current verifyPhoneNumberScreenOneModelObj

// ignore_for_file: must_be_immutable
class VerifyPhoneNumberScreenOneProvider extends ChangeNotifier {TextEditingController otpController = TextEditingController();

VerifyPhoneNumberScreenOneModel verifyPhoneNumberScreenOneModelObj = VerifyPhoneNumberScreenOneModel();

@override void dispose() { super.dispose(); } 
 }
