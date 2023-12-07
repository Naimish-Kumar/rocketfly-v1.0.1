import 'package:flutter/material.dart';import 'package:rocketfly/core/app_export.dart';import 'package:rocketfly/presentation/profile_edit_screen_one_screen/models/profile_edit_screen_one_model.dart';/// A provider class for the ProfileEditScreenOneScreen.
///
/// This provider manages the state of the ProfileEditScreenOneScreen, including the
/// current profileEditScreenOneModelObj

// ignore_for_file: must_be_immutable
class ProfileEditScreenOneProvider extends ChangeNotifier {TextEditingController nameController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController mobileNumberController = TextEditingController();

ProfileEditScreenOneModel profileEditScreenOneModelObj = ProfileEditScreenOneModel();

@override void dispose() { super.dispose(); nameController.dispose(); emailController.dispose(); mobileNumberController.dispose(); } 
onSelected(dynamic value) { for (var element in profileEditScreenOneModelObj.dropdownItemList) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
 }
