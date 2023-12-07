import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/presentation/single_course_lesson_screen_page/models/single_course_lesson_screen_model.dart';

/// A provider class for the SingleCourseLessonScreenPage.
///
/// This provider manages the state of the SingleCourseLessonScreenPage, including the
/// current singleCourseLessonScreenModelObj
class SingleCourseLessonScreenProvider extends ChangeNotifier {
  SingleCourseLessonScreenModel singleCourseLessonScreenModelObj =
      SingleCourseLessonScreenModel();

  @override
  void dispose() {
    super.dispose();
  }

  onSelected(dynamic value) {
    for (var element in singleCourseLessonScreenModelObj.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  onSelected1(dynamic value) {
    for (var element in singleCourseLessonScreenModelObj.dropdownItemList1) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  onSelected2(dynamic value) {
    for (var element in singleCourseLessonScreenModelObj.dropdownItemList2) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }
}
