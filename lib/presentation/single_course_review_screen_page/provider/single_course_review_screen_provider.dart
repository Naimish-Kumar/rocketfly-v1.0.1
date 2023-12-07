import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/presentation/single_course_review_screen_page/models/single_course_review_screen_model.dart';

/// A provider class for the SingleCourseReviewScreenPage.
///
/// This provider manages the state of the SingleCourseReviewScreenPage, including the
/// current singleCourseReviewScreenModelObj
class SingleCourseReviewScreenProvider extends ChangeNotifier {
  SingleCourseReviewScreenModel singleCourseReviewScreenModelObj =
      SingleCourseReviewScreenModel();

  @override
  void dispose() {
    super.dispose();
  }

  onSelected(dynamic value) {
    for (var element in singleCourseReviewScreenModelObj.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  onSelected1(dynamic value) {
    for (var element in singleCourseReviewScreenModelObj.dropdownItemList1) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  onSelected2(dynamic value) {
    for (var element in singleCourseReviewScreenModelObj.dropdownItemList2) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }
}
