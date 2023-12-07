import 'package:flutter/material.dart';import 'package:rocketfly/presentation/search_no_result_found_screen/models/search_no_result_found_model.dart';/// A provider class for the SearchNoResultFoundScreen.
///
/// This provider manages the state of the SearchNoResultFoundScreen, including the
/// current searchNoResultFoundModelObj

// ignore_for_file: must_be_immutable
class SearchNoResultFoundProvider extends ChangeNotifier {TextEditingController searchBoxController = TextEditingController();

TextEditingController group215Controller = TextEditingController();

SearchNoResultFoundModel searchNoResultFoundModelObj = SearchNoResultFoundModel();

@override void dispose() { super.dispose(); searchBoxController.dispose(); group215Controller.dispose(); } 
 }
