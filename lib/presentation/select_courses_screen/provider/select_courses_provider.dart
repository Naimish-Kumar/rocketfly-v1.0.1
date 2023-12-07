import 'package:flutter/material.dart';import 'package:rocketfly/core/app_export.dart';import 'package:rocketfly/presentation/select_courses_screen/models/select_courses_model.dart';/// A provider class for the SelectCoursesScreen.
///
/// This provider manages the state of the SelectCoursesScreen, including the
/// current selectCoursesModelObj

// ignore_for_file: must_be_immutable
class SelectCoursesProvider extends ChangeNotifier {SelectCoursesModel selectCoursesModelObj = SelectCoursesModel();

@override void dispose() { super.dispose(); } 
 }
