import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/presentation/single_courses_complete_certificate_screen_page/models/single_courses_complete_certificate_screen_model.dart';

/// A provider class for the SingleCoursesCompleteCertificateScreenPage.
///
/// This provider manages the state of the SingleCoursesCompleteCertificateScreenPage, including the
/// current singleCoursesCompleteCertificateScreenModelObj
class SingleCoursesCompleteCertificateScreenProvider extends ChangeNotifier {
  SingleCoursesCompleteCertificateScreenModel
      singleCoursesCompleteCertificateScreenModelObj =
      SingleCoursesCompleteCertificateScreenModel();

  @override
  void dispose() {
    super.dispose();
  }
}
