import 'package:flutter/material.dart';import 'package:rocketfly/presentation/single_courses_ongoing_screen/models/single_courses_ongoing_model.dart';/// A provider class for the SingleCoursesOngoingScreen.
///
/// This provider manages the state of the SingleCoursesOngoingScreen, including the
/// current singleCoursesOngoingModelObj

// ignore_for_file: must_be_immutable
class SingleCoursesOngoingProvider extends ChangeNotifier {SingleCoursesOngoingModel singleCoursesOngoingModelObj = SingleCoursesOngoingModel();

@override void dispose() { super.dispose(); } 
 }
