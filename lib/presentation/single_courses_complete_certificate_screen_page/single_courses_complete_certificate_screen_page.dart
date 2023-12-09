import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/custom_elevated_button.dart';
import 'provider/single_courses_complete_certificate_screen_provider.dart';

// ignore_for_file: must_be_immutable
class SingleCoursesCompleteCertificateScreenPage extends StatefulWidget {
  const SingleCoursesCompleteCertificateScreenPage({Key? key})
      : super(
          key: key,
        );

  @override
  SingleCoursesCompleteCertificateScreenPageState createState() =>
      SingleCoursesCompleteCertificateScreenPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SingleCoursesCompleteCertificateScreenProvider(),
      child: SingleCoursesCompleteCertificateScreenPage(),
    );
  }
}

class SingleCoursesCompleteCertificateScreenPageState
    extends State<SingleCoursesCompleteCertificateScreenPage>
    with
        AutomaticKeepAliveClientMixin<
            SingleCoursesCompleteCertificateScreenPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillPrimary,
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(height: 24.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: Column(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgMaskGroup386x343,
                        height: 386.v,
                        width: 343.h,
                      ),
                      SizedBox(height: 32.v),
                      CustomElevatedButton(
                        text: "lbl_download".tr,
                        buttonStyle: CustomButtonStyles.fillDeepPurpleA,
                        buttonTextStyle: theme.textTheme.titleLarge!,
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
}
