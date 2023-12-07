import 'package:flutter/material.dart';
import 'package:rocketfly/presentation/single_courses_complete_certificate_screen_one_page/models/single_courses_complete_certificate_screen_one_model.dart';

/// A provider class for the SingleCoursesCompleteCertificateScreenOnePage.
///
/// This provider manages the state of the SingleCoursesCompleteCertificateScreenOnePage, including the
/// current singleCoursesCompleteCertificateScreenOneModelObj
class SingleCoursesCompleteCertificateScreenOneProvider extends ChangeNotifier {
  SingleCoursesCompleteCertificateScreenOneModel
      singleCoursesCompleteCertificateScreenOneModelObj =
      SingleCoursesCompleteCertificateScreenOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
