import 'package:flutter/material.dart';import 'package:rocketfly/core/app_export.dart';import 'package:rocketfly/presentation/new_release_courses_screen_one_screen/models/new_release_courses_screen_one_model.dart';import '../models/business1_item_model.dart';/// A provider class for the NewReleaseCoursesScreenOneScreen.
///
/// This provider manages the state of the NewReleaseCoursesScreenOneScreen, including the
/// current newReleaseCoursesScreenOneModelObj

// ignore_for_file: must_be_immutable
class NewReleaseCoursesScreenOneProvider extends ChangeNotifier {NewReleaseCoursesScreenOneModel newReleaseCoursesScreenOneModelObj = NewReleaseCoursesScreenOneModel();

@override void dispose() { super.dispose(); } 
 }
