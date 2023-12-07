import 'package:flutter/material.dart';import 'package:rocketfly/core/app_export.dart';import 'package:rocketfly/presentation/search_no_result_found_screen_one_screen/models/search_no_result_found_screen_one_model.dart';/// A provider class for the SearchNoResultFoundScreenOneScreen.
///
/// This provider manages the state of the SearchNoResultFoundScreenOneScreen, including the
/// current searchNoResultFoundScreenOneModelObj

// ignore_for_file: must_be_immutable
class SearchNoResultFoundScreenOneProvider extends ChangeNotifier {TextEditingController searchBoxController = TextEditingController();

TextEditingController group605Controller = TextEditingController();

SearchNoResultFoundScreenOneModel searchNoResultFoundScreenOneModelObj = SearchNoResultFoundScreenOneModel();

@override void dispose() { super.dispose(); searchBoxController.dispose(); group605Controller.dispose(); } 
 }
