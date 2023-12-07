import 'package:flutter/material.dart';import 'package:rocketfly/core/app_export.dart';import 'package:rocketfly/presentation/my_courses_completed_screen_one_page/models/my_courses_completed_screen_one_model.dart';import '../models/thecompletelist1_item_model.dart';/// A provider class for the MyCoursesCompletedScreenOnePage.
///
/// This provider manages the state of the MyCoursesCompletedScreenOnePage, including the
/// current myCoursesCompletedScreenOneModelObj

// ignore_for_file: must_be_immutable
class MyCoursesCompletedScreenOneProvider extends ChangeNotifier {MyCoursesCompletedScreenOneModel myCoursesCompletedScreenOneModelObj = MyCoursesCompletedScreenOneModel();

@override void dispose() { super.dispose(); } 
 }
