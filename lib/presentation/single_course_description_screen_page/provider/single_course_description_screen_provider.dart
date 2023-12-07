import 'package:flutter/material.dart';
import 'package:rocketfly/presentation/single_course_description_screen_page/models/single_course_description_screen_model.dart';

/// A provider class for the SingleCourseDescriptionScreenPage.
///
/// This provider manages the state of the SingleCourseDescriptionScreenPage, including the
/// current singleCourseDescriptionScreenModelObj
class SingleCourseDescriptionScreenProvider extends ChangeNotifier {
  SingleCourseDescriptionScreenModel singleCourseDescriptionScreenModelObj =
      SingleCourseDescriptionScreenModel();

  @override
  void dispose() {
    super.dispose();
  }

  onSelected(dynamic value) {
    for (var element
        in singleCourseDescriptionScreenModelObj.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  onSelected1(dynamic value) {
    for (var element
        in singleCourseDescriptionScreenModelObj.dropdownItemList1) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  onSelected2(dynamic value) {
    for (var element
        in singleCourseDescriptionScreenModelObj.dropdownItemList2) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  onSelected3(dynamic value) {
    for (var element
        in singleCourseDescriptionScreenModelObj.dropdownItemList3) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }
}
