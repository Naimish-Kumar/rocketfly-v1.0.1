import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/presentation/single_course_description_screen_one_page/models/single_course_description_screen_one_model.dart';

/// A provider class for the SingleCourseDescriptionScreenOnePage.
///
/// This provider manages the state of the SingleCourseDescriptionScreenOnePage, including the
/// current singleCourseDescriptionScreenOneModelObj
class SingleCourseDescriptionScreenOneProvider extends ChangeNotifier {
  SingleCourseDescriptionScreenOneModel
      singleCourseDescriptionScreenOneModelObj =
      SingleCourseDescriptionScreenOneModel();

  @override
  void dispose() {
    super.dispose();
  }

  onSelected(dynamic value) {
    for (var element
        in singleCourseDescriptionScreenOneModelObj.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  onSelected1(dynamic value) {
    for (var element
        in singleCourseDescriptionScreenOneModelObj.dropdownItemList1) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  onSelected2(dynamic value) {
    for (var element
        in singleCourseDescriptionScreenOneModelObj.dropdownItemList2) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  onSelected3(dynamic value) {
    for (var element
        in singleCourseDescriptionScreenOneModelObj.dropdownItemList3) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }
}
