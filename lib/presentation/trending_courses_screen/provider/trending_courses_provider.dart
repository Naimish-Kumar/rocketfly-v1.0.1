import 'package:flutter/material.dart';import 'package:rocketfly/core/app_export.dart';import 'package:rocketfly/presentation/trending_courses_screen/models/trending_courses_model.dart';import '../models/designlist_item_model.dart';/// A provider class for the TrendingCoursesScreen.
///
/// This provider manages the state of the TrendingCoursesScreen, including the
/// current trendingCoursesModelObj

// ignore_for_file: must_be_immutable
class TrendingCoursesProvider extends ChangeNotifier {TrendingCoursesModel trendingCoursesModelObj = TrendingCoursesModel();

@override void dispose() { super.dispose(); } 
 }
