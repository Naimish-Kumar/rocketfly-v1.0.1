import 'package:flutter/material.dart';import 'package:rocketfly/core/app_export.dart';import 'package:rocketfly/presentation/language_screen_one_screen/models/language_screen_one_model.dart';import '../models/languagelist1_item_model.dart';/// A provider class for the LanguageScreenOneScreen.
///
/// This provider manages the state of the LanguageScreenOneScreen, including the
/// current languageScreenOneModelObj

// ignore_for_file: must_be_immutable
class LanguageScreenOneProvider extends ChangeNotifier {LanguageScreenOneModel languageScreenOneModelObj = LanguageScreenOneModel();

@override void dispose() { super.dispose(); } 
 }
