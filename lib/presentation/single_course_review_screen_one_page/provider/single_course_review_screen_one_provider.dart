import 'package:flutter/material.dart';
import 'package:rocketfly/presentation/single_course_review_screen_one_page/models/single_course_review_screen_one_model.dart';

/// A provider class for the SingleCourseReviewScreenOnePage.
///
/// This provider manages the state of the SingleCourseReviewScreenOnePage, including the
/// current singleCourseReviewScreenOneModelObj
class SingleCourseReviewScreenOneProvider extends ChangeNotifier {
  SingleCourseReviewScreenOneModel singleCourseReviewScreenOneModelObj =
      SingleCourseReviewScreenOneModel();

  @override
  void dispose() {
    super.dispose();
  }

  onSelected(dynamic value) {
    for (var element in singleCourseReviewScreenOneModelObj.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  onSelected1(dynamic value) {
    for (var element in singleCourseReviewScreenOneModelObj.dropdownItemList1) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  onSelected2(dynamic value) {
    for (var element in singleCourseReviewScreenOneModelObj.dropdownItemList2) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  onSelected3(dynamic value) {
    for (var element in singleCourseReviewScreenOneModelObj.dropdownItemList3) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }
}
