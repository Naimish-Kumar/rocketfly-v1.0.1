import 'package:flutter/material.dart';import 'package:rocketfly/presentation/single_course_lesson_screen_tab_container_screen/models/single_course_lesson_screen_tab_container_model.dart';/// A provider class for the SingleCourseLessonScreenTabContainerScreen.
///
/// This provider manages the state of the SingleCourseLessonScreenTabContainerScreen, including the
/// current singleCourseLessonScreenTabContainerModelObj

// ignore_for_file: must_be_immutable
class SingleCourseLessonScreenTabContainerProvider extends ChangeNotifier {SingleCourseLessonScreenTabContainerModel singleCourseLessonScreenTabContainerModelObj = SingleCourseLessonScreenTabContainerModel();

@override void dispose() { super.dispose(); } 
 }
