import 'package:flutter/material.dart';import 'package:rocketfly/presentation/search_screen/models/search_model.dart';/// A provider class for the SearchScreen.
///
/// This provider manages the state of the SearchScreen, including the
/// current searchModelObj

// ignore_for_file: must_be_immutable
class SearchProvider extends ChangeNotifier {TextEditingController searchController = TextEditingController();

SearchModel searchModelObj = SearchModel();

@override void dispose() { super.dispose(); searchController.dispose(); } 
 }
