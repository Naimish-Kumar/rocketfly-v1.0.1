import 'package:flutter/material.dart';import 'package:rocketfly/core/app_export.dart';import 'package:rocketfly/presentation/new_release_courses_screen/models/new_release_courses_model.dart';/// A provider class for the NewReleaseCoursesScreen.
///
/// This provider manages the state of the NewReleaseCoursesScreen, including the
/// current newReleaseCoursesModelObj

// ignore_for_file: must_be_immutable
class NewReleaseCoursesProvider extends ChangeNotifier {NewReleaseCoursesModel newReleaseCoursesModelObj = NewReleaseCoursesModel();

@override void dispose() { super.dispose(); } 
 }
