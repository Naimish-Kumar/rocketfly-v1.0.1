import 'package:flutter/material.dart';import 'package:rocketfly/presentation/faqs_screen/models/faqs_model.dart';/// A provider class for the FaqsScreen.
///
/// This provider manages the state of the FaqsScreen, including the
/// current faqsModelObj

// ignore_for_file: must_be_immutable
class FaqsProvider extends ChangeNotifier {FaqsModel faqsModelObj = FaqsModel();

@override void dispose() { super.dispose(); } 
void onSelectedExpandableList(int index, bool value, ) { faqsModelObj.refundstatuscommonItemList.forEach((element) {element.isSelected = false;}); faqsModelObj.refundstatuscommonItemList[index].isSelected = value; notifyListeners(); } 
 }
