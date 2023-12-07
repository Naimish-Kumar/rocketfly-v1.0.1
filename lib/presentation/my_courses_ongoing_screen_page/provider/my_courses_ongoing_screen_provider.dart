import 'package:flutter/material.dart';import 'package:rocketfly/presentation/my_courses_ongoing_screen_page/models/my_courses_ongoing_screen_model.dart';/// A provider class for the MyCoursesOngoingScreenPage.
///
/// This provider manages the state of the MyCoursesOngoingScreenPage, including the
/// current myCoursesOngoingScreenModelObj

// ignore_for_file: must_be_immutable
class MyCoursesOngoingScreenProvider extends ChangeNotifier {MyCoursesOngoingScreenModel myCoursesOngoingScreenModelObj = MyCoursesOngoingScreenModel();

@override void dispose() { super.dispose(); } 
 }
