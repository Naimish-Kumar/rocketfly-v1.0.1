import 'package:flutter/material.dart';import 'package:rocketfly/core/app_export.dart';import 'package:rocketfly/presentation/home_screen_one_page/models/home_screen_one_model.dart';import '../models/lifestyle_item_model.dart';/// A provider class for the HomeScreenOnePage.
///
/// This provider manages the state of the HomeScreenOnePage, including the
/// current homeScreenOneModelObj

// ignore_for_file: must_be_immutable
class HomeScreenOneProvider extends ChangeNotifier {HomeScreenOneModel homeScreenOneModelObj = HomeScreenOneModel();

@override void dispose() { super.dispose(); } 
 }
