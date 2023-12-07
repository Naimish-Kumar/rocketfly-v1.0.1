import 'package:flutter/material.dart';import 'package:rocketfly/presentation/let_s_you_in_screen/models/let_s_you_in_model.dart';/// A provider class for the LetSYouInScreen.
///
/// This provider manages the state of the LetSYouInScreen, including the
/// current letSYouInModelObj

// ignore_for_file: must_be_immutable
class LetSYouInProvider extends ChangeNotifier {LetSYouInModel letSYouInModelObj = LetSYouInModel();

@override void dispose() { super.dispose(); } 
 }
