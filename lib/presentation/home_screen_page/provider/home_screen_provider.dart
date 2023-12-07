import 'package:flutter/material.dart';import 'package:rocketfly/presentation/home_screen_page/models/home_screen_model.dart';/// A provider class for the HomeScreenPage.
///
/// This provider manages the state of the HomeScreenPage, including the
/// current homeScreenModelObj

// ignore_for_file: must_be_immutable
class HomeScreenProvider extends ChangeNotifier {TextEditingController searchController = TextEditingController();

HomeScreenModel homeScreenModelObj = HomeScreenModel();

int sliderIndex = 0;

@override void dispose() { super.dispose(); searchController.dispose(); } 
 }
