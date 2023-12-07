import 'package:flutter/material.dart';
import 'package:rocketfly/presentation/my_courses_completed_screen_tab_container_screen/models/my_courses_completed_screen_tab_container_model.dart';

/// A provider class for the MyCoursesCompletedScreenTabContainerScreen.
///
/// This provider manages the state of the MyCoursesCompletedScreenTabContainerScreen, including the
/// current myCoursesCompletedScreenTabContainerModelObj
class MyCoursesCompletedScreenTabContainerProvider extends ChangeNotifier {
  MyCoursesCompletedScreenTabContainerModel
      myCoursesCompletedScreenTabContainerModelObj =
      MyCoursesCompletedScreenTabContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}
