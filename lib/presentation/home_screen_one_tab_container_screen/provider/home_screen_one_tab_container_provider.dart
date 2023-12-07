import 'package:flutter/material.dart';import 'package:rocketfly/core/app_export.dart';import 'package:rocketfly/presentation/home_screen_one_tab_container_screen/models/home_screen_one_tab_container_model.dart';import '../models/vector1_item_model.dart';import '../models/courses_item_model.dart';import '../models/mentors_item_model.dart';import '../models/categories_item_model.dart';/// A provider class for the HomeScreenOneTabContainerScreen.
///
/// This provider manages the state of the HomeScreenOneTabContainerScreen, including the
/// current homeScreenOneTabContainerModelObj

// ignore_for_file: must_be_immutable
class HomeScreenOneTabContainerProvider extends ChangeNotifier {TextEditingController searchController = TextEditingController();

HomeScreenOneTabContainerModel homeScreenOneTabContainerModelObj = HomeScreenOneTabContainerModel();

int sliderIndex = 0;

@override void dispose() { super.dispose(); searchController.dispose(); } 
 }
