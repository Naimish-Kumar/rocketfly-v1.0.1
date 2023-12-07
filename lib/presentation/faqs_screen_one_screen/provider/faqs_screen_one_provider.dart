import 'package:flutter/material.dart';import 'package:rocketfly/presentation/faqs_screen_one_screen/models/faqs_screen_one_model.dart';/// A provider class for the FaqsScreenOneScreen.
///
/// This provider manages the state of the FaqsScreenOneScreen, including the
/// current faqsScreenOneModelObj

// ignore_for_file: must_be_immutable
class FaqsScreenOneProvider extends ChangeNotifier {FaqsScreenOneModel faqsScreenOneModelObj = FaqsScreenOneModel();

@override void dispose() { super.dispose(); } 
void onSelectedExpandableList(int index, bool value, ) { faqsScreenOneModelObj.refundstatuscommon1ItemList.forEach((element) {element.isSelected = false;}); faqsScreenOneModelObj.refundstatuscommon1ItemList[index].isSelected = value; notifyListeners(); } 
 }
