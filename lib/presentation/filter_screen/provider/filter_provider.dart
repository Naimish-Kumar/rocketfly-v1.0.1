import 'package:flutter/material.dart';import 'package:rocketfly/presentation/filter_screen/models/filter_model.dart';/// A provider class for the FilterScreen.
///
/// This provider manages the state of the FilterScreen, including the
/// current filterModelObj

// ignore_for_file: must_be_immutable
class FilterProvider extends ChangeNotifier {FilterModel filterModelObj = FilterModel();

@override void dispose() { super.dispose(); } 
 }
