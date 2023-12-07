import 'models/single_courses_complete_certificate_screen_one_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/custom_elevated_button.dart';
import 'provider/single_courses_complete_certificate_screen_one_provider.dart';

// ignore_for_file: must_be_immutable
class SingleCoursesCompleteCertificateScreenOnePage extends StatefulWidget {
  const SingleCoursesCompleteCertificateScreenOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  SingleCoursesCompleteCertificateScreenOnePageState createState() =>
      SingleCoursesCompleteCertificateScreenOnePageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SingleCoursesCompleteCertificateScreenOneProvider(),
      child: SingleCoursesCompleteCertificateScreenOnePage(),
    );
  }
}

class SingleCoursesCompleteCertificateScreenOnePageState
    extends State<SingleCoursesCompleteCertificateScreenOnePage>
    with
        AutomaticKeepAliveClientMixin<
            SingleCoursesCompleteCertificateScreenOnePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimaryContainer,
          child: Column(
            children: [
              SizedBox(height: 24.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: Column(
                  children: [
                    _buildImagePlaceholder(context),
                    SizedBox(height: 32.v),
                    CustomElevatedButton(
                      text: "lbl_download".tr,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildImagePlaceholder(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 22.h,
        vertical: 174.v,
      ),
      decoration: AppDecoration.fillBlueGray,
      child: Opacity(
        opacity: 0.3,
        child: CustomImageView(
          imagePath: ImageConstant.imgPlaceHolderErrorcontainer38x299,
          height: 38.v,
          width: 299.h,
        ),
      ),
    );
  }
}
