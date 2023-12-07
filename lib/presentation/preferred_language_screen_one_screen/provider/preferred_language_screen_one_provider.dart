import 'package:flutter/material.dart';import 'package:rocketfly/presentation/preferred_language_screen_one_screen/models/preferred_language_screen_one_model.dart';/// A provider class for the PreferredLanguageScreenOneScreen.
///
/// This provider manages the state of the PreferredLanguageScreenOneScreen, including the
/// current preferredLanguageScreenOneModelObj

// ignore_for_file: must_be_immutable
class PreferredLanguageScreenOneProvider extends ChangeNotifier {PreferredLanguageScreenOneModel preferredLanguageScreenOneModelObj = PreferredLanguageScreenOneModel();

@override void dispose() { super.dispose(); } 
void onSelectedChipView(int index, bool value, ) { preferredLanguageScreenOneModelObj.languageselectionItemList.forEach((element) {element.isSelected = false;}); preferredLanguageScreenOneModelObj.languageselectionItemList[index].isSelected = value; notifyListeners(); } 
 }
