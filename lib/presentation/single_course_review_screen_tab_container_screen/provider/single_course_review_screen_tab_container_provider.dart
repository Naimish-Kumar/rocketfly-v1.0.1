import 'package:flutter/material.dart';import 'package:rocketfly/presentation/single_course_review_screen_tab_container_screen/models/single_course_review_screen_tab_container_model.dart';/// A provider class for the SingleCourseReviewScreenTabContainerScreen.
///
/// This provider manages the state of the SingleCourseReviewScreenTabContainerScreen, including the
/// current singleCourseReviewScreenTabContainerModelObj

// ignore_for_file: must_be_immutable
class SingleCourseReviewScreenTabContainerProvider extends ChangeNotifier {SingleCourseReviewScreenTabContainerModel singleCourseReviewScreenTabContainerModelObj = SingleCourseReviewScreenTabContainerModel();

@override void dispose() { super.dispose(); } 
 }
