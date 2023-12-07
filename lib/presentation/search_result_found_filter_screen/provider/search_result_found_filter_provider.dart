import 'package:flutter/material.dart';import 'package:rocketfly/presentation/search_result_found_filter_screen/models/search_result_found_filter_model.dart';/// A provider class for the SearchResultFoundFilterScreen.
///
/// This provider manages the state of the SearchResultFoundFilterScreen, including the
/// current searchResultFoundFilterModelObj

// ignore_for_file: must_be_immutable
class SearchResultFoundFilterProvider extends ChangeNotifier {TextEditingController searchBoxController = TextEditingController();

TextEditingController group376Controller = TextEditingController();

SearchResultFoundFilterModel searchResultFoundFilterModelObj = SearchResultFoundFilterModel();

@override void dispose() { super.dispose(); searchBoxController.dispose(); group376Controller.dispose(); } 
void onSelectedChipView(int index, bool value, ) { searchResultFoundFilterModelObj.reviewItemList.forEach((element) {element.isSelected = false;}); searchResultFoundFilterModelObj.reviewItemList[index].isSelected = value; notifyListeners(); } 
 }
