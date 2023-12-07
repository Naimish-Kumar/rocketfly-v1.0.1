import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/presentation/single_mentor_courses_screen_page/models/single_mentor_courses_screen_model.dart';

/// A provider class for the SingleMentorCoursesScreenPage.
///
/// This provider manages the state of the SingleMentorCoursesScreenPage, including the
/// current singleMentorCoursesScreenModelObj
class SingleMentorCoursesScreenProvider extends ChangeNotifier {
  SingleMentorCoursesScreenModel singleMentorCoursesScreenModelObj =
      SingleMentorCoursesScreenModel();

  @override
  void dispose() {
    super.dispose();
  }
}
