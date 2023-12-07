import 'package:flutter/material.dart';import 'package:rocketfly/core/app_export.dart';import 'package:rocketfly/presentation/language_screen/models/language_model.dart';import '../models/languagelist_item_model.dart';/// A provider class for the LanguageScreen.
///
/// This provider manages the state of the LanguageScreen, including the
/// current languageModelObj

// ignore_for_file: must_be_immutable
class LanguageProvider extends ChangeNotifier {LanguageModel languageModelObj = LanguageModel();

@override void dispose() { super.dispose(); } 
 }
