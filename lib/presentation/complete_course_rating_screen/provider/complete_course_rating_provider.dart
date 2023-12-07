import 'package:flutter/material.dart';import 'package:rocketfly/core/app_export.dart';import 'package:rocketfly/presentation/complete_course_rating_screen/models/complete_course_rating_model.dart';/// A provider class for the CompleteCourseRatingScreen.
///
/// This provider manages the state of the CompleteCourseRatingScreen, including the
/// current completeCourseRatingModelObj

// ignore_for_file: must_be_immutable
class CompleteCourseRatingProvider extends ChangeNotifier {CompleteCourseRatingModel completeCourseRatingModelObj = CompleteCourseRatingModel();

@override void dispose() { super.dispose(); } 
 }
