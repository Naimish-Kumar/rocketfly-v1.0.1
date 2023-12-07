import 'package:flutter/material.dart';import 'package:rocketfly/presentation/search_result_found_screen_one_screen/models/search_result_found_screen_one_model.dart';/// A provider class for the SearchResultFoundScreenOneScreen.
///
/// This provider manages the state of the SearchResultFoundScreenOneScreen, including the
/// current searchResultFoundScreenOneModelObj

// ignore_for_file: must_be_immutable
class SearchResultFoundScreenOneProvider extends ChangeNotifier {TextEditingController searchBoxController = TextEditingController();

TextEditingController group419Controller = TextEditingController();

SearchResultFoundScreenOneModel searchResultFoundScreenOneModelObj = SearchResultFoundScreenOneModel();

@override void dispose() { super.dispose(); searchBoxController.dispose(); group419Controller.dispose(); } 
 }
