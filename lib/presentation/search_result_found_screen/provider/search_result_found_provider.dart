import 'package:flutter/material.dart';import 'package:rocketfly/presentation/search_result_found_screen/models/search_result_found_model.dart';/// A provider class for the SearchResultFoundScreen.
///
/// This provider manages the state of the SearchResultFoundScreen, including the
/// current searchResultFoundModelObj

// ignore_for_file: must_be_immutable
class SearchResultFoundProvider extends ChangeNotifier {TextEditingController searchBoxController = TextEditingController();

TextEditingController group239Controller = TextEditingController();

SearchResultFoundModel searchResultFoundModelObj = SearchResultFoundModel();

@override void dispose() { super.dispose(); searchBoxController.dispose(); group239Controller.dispose(); } 
 }
