import 'package:flutter/material.dart';import 'package:rocketfly/core/app_export.dart';import 'package:rocketfly/presentation/choose_interests_screen/models/choose_interests_model.dart';import '../models/chooseinterests_item_model.dart';/// A provider class for the ChooseInterestsScreen.
///
/// This provider manages the state of the ChooseInterestsScreen, including the
/// current chooseInterestsModelObj

// ignore_for_file: must_be_immutable
class ChooseInterestsProvider extends ChangeNotifier {ChooseInterestsModel chooseInterestsModelObj = ChooseInterestsModel();

@override void dispose() { super.dispose(); } 
void onSelectedChipView(int index, bool value, ) { chooseInterestsModelObj.chooseinterestsItemList.forEach((element) {element.isSelected = false;}); chooseInterestsModelObj.chooseinterestsItemList[index].isSelected = value; notifyListeners(); } 
 }
