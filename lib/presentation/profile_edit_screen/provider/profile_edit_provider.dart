import 'package:flutter/material.dart';import 'package:rocketfly/presentation/profile_edit_screen/models/profile_edit_model.dart';/// A provider class for the ProfileEditScreen.
///
/// This provider manages the state of the ProfileEditScreen, including the
/// current profileEditModelObj

// ignore_for_file: must_be_immutable
class ProfileEditProvider extends ChangeNotifier {TextEditingController nameController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController arrowDownController = TextEditingController();

ProfileEditModel profileEditModelObj = ProfileEditModel();

@override void dispose() { super.dispose(); nameController.dispose(); emailController.dispose(); arrowDownController.dispose(); } 
 }
