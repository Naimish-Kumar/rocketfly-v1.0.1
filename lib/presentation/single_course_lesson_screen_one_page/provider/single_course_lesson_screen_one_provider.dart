import 'package:flutter/material.dart';
import 'package:rocketfly/presentation/single_course_lesson_screen_one_page/models/single_course_lesson_screen_one_model.dart';

/// A provider class for the SingleCourseLessonScreenOnePage.
///
/// This provider manages the state of the SingleCourseLessonScreenOnePage, including the
/// current singleCourseLessonScreenOneModelObj
class SingleCourseLessonScreenOneProvider extends ChangeNotifier {
  SingleCourseLessonScreenOneModel singleCourseLessonScreenOneModelObj =
      SingleCourseLessonScreenOneModel();

  @override
  void dispose() {
    super.dispose();
  }

  onSelected(dynamic value) {
    for (var element in singleCourseLessonScreenOneModelObj.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  onSelected1(dynamic value) {
    for (var element in singleCourseLessonScreenOneModelObj.dropdownItemList1) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  onSelected2(dynamic value) {
    for (var element in singleCourseLessonScreenOneModelObj.dropdownItemList2) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  onSelected3(dynamic value) {
    for (var element in singleCourseLessonScreenOneModelObj.dropdownItemList3) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }
}
