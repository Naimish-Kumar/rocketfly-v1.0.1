import 'package:flutter/material.dart';import 'package:rocketfly/core/app_export.dart';import 'package:rocketfly/presentation/trending_courses_screen_one_screen/models/trending_courses_screen_one_model.dart';/// A provider class for the TrendingCoursesScreenOneScreen.
///
/// This provider manages the state of the TrendingCoursesScreenOneScreen, including the
/// current trendingCoursesScreenOneModelObj

// ignore_for_file: must_be_immutable
class TrendingCoursesScreenOneProvider extends ChangeNotifier {TrendingCoursesScreenOneModel trendingCoursesScreenOneModelObj = TrendingCoursesScreenOneModel();

@override void dispose() { super.dispose(); } 
 }
