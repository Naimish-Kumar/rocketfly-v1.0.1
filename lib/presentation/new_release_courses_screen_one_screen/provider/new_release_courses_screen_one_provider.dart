import 'package:flutter/material.dart';import 'package:rocketfly/presentation/new_release_courses_screen_one_screen/models/new_release_courses_screen_one_model.dart';/// A provider class for the NewReleaseCoursesScreenOneScreen.
///
/// This provider manages the state of the NewReleaseCoursesScreenOneScreen, including the
/// current newReleaseCoursesScreenOneModelObj

// ignore_for_file: must_be_immutable
class NewReleaseCoursesScreenOneProvider extends ChangeNotifier {NewReleaseCoursesScreenOneModel newReleaseCoursesScreenOneModelObj = NewReleaseCoursesScreenOneModel();

@override void dispose() { super.dispose(); } 
 }
