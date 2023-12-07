import 'package:flutter/material.dart';import 'package:rocketfly/core/app_export.dart';import 'package:rocketfly/presentation/preferred_language_screen/models/preferred_language_model.dart';import '../models/preferredlanguagechipview_item_model.dart';/// A provider class for the PreferredLanguageScreen.
///
/// This provider manages the state of the PreferredLanguageScreen, including the
/// current preferredLanguageModelObj

// ignore_for_file: must_be_immutable
class PreferredLanguageProvider extends ChangeNotifier {PreferredLanguageModel preferredLanguageModelObj = PreferredLanguageModel();

@override void dispose() { super.dispose(); } 
void onSelectedChipView(int index, bool value, ) { preferredLanguageModelObj.preferredlanguagechipviewItemList.forEach((element) {element.isSelected = false;}); preferredLanguageModelObj.preferredlanguagechipviewItemList[index].isSelected = value; notifyListeners(); } 
 }
