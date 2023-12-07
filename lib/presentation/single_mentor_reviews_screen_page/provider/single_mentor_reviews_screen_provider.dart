import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/presentation/single_mentor_reviews_screen_page/models/single_mentor_reviews_screen_model.dart';

/// A provider class for the SingleMentorReviewsScreenPage.
///
/// This provider manages the state of the SingleMentorReviewsScreenPage, including the
/// current singleMentorReviewsScreenModelObj
class SingleMentorReviewsScreenProvider extends ChangeNotifier {
  SingleMentorReviewsScreenModel singleMentorReviewsScreenModelObj =
      SingleMentorReviewsScreenModel();

  @override
  void dispose() {
    super.dispose();
  }
}
