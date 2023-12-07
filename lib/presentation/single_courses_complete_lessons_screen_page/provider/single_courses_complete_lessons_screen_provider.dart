import 'package:flutter/material.dart';import 'package:rocketfly/presentation/single_courses_complete_lessons_screen_page/models/single_courses_complete_lessons_screen_model.dart';/// A provider class for the SingleCoursesCompleteLessonsScreenPage.
///
/// This provider manages the state of the SingleCoursesCompleteLessonsScreenPage, including the
/// current singleCoursesCompleteLessonsScreenModelObj

// ignore_for_file: must_be_immutable
class SingleCoursesCompleteLessonsScreenProvider extends ChangeNotifier {SingleCoursesCompleteLessonsScreenModel singleCoursesCompleteLessonsScreenModelObj = SingleCoursesCompleteLessonsScreenModel();

@override void dispose() { super.dispose(); } 
 }
