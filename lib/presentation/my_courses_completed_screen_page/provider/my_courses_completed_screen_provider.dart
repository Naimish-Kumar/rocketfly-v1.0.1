import 'package:flutter/material.dart';import 'package:rocketfly/core/app_export.dart';import 'package:rocketfly/presentation/my_courses_completed_screen_page/models/my_courses_completed_screen_model.dart';import '../models/thecompletelist_item_model.dart';/// A provider class for the MyCoursesCompletedScreenPage.
///
/// This provider manages the state of the MyCoursesCompletedScreenPage, including the
/// current myCoursesCompletedScreenModelObj

// ignore_for_file: must_be_immutable
class MyCoursesCompletedScreenProvider extends ChangeNotifier {MyCoursesCompletedScreenModel myCoursesCompletedScreenModelObj = MyCoursesCompletedScreenModel();

@override void dispose() { super.dispose(); } 
 }
