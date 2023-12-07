import 'package:flutter/material.dart';import 'package:rocketfly/presentation/filter_screen_one_screen/models/filter_screen_one_model.dart';/// A provider class for the FilterScreenOneScreen.
///
/// This provider manages the state of the FilterScreenOneScreen, including the
/// current filterScreenOneModelObj

// ignore_for_file: must_be_immutable
class FilterScreenOneProvider extends ChangeNotifier {FilterScreenOneModel filterScreenOneModelObj = FilterScreenOneModel();

@override void dispose() { super.dispose(); } 
 }
