import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/custom_elevated_button.dart';
import 'package:rocketfly/widgets/custom_outlined_button.dart';
import 'provider/let_s_you_in_provider.dart';

class LetSYouInScreen extends StatefulWidget {
  const LetSYouInScreen({Key? key}) : super(key: key);

  @override
  LetSYouInScreenState createState() => LetSYouInScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => LetSYouInProvider(), child: LetSYouInScreen());
  }
}

class LetSYouInScreenState extends State<LetSYouInScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 10.v),
          child: Column(children: [
            CustomImageView(
                imagePath: ImageConstant.imgArrowLeft,
                height: 24.adaptSize,
                width: 24.adaptSize,
                alignment: Alignment.centerLeft,
                onTap: () {
                  onTapImgArrowLeft(context);
                }),
            SizedBox(height: 32.v),
            CustomImageView(
                imagePath: ImageConstant.imgMaskGroup230x343,
                height: 230.v,
                width: 343.h),
            SizedBox(height: 32.v),
            Text("lbl_let_s_you_in".tr,
                style: CustomTextStyles.headlineLargeOnError_1),
            SizedBox(height: 29.v),
            CustomOutlinedButton(
                text: "msg_continue_with_google".tr,
                leftIcon: Container(
                    margin: EdgeInsets.only(right: 8.h),
                    child: CustomImageView(
                        imagePath: ImageConstant.imgIcon,
                        height: 24.adaptSize,
                        width: 24.adaptSize)),
                buttonStyle: CustomButtonStyles.outlineOnError,
                buttonTextStyle: CustomTextStyles.titleLargeOnError),
            SizedBox(height: 12.v),
            CustomOutlinedButton(
                text: "msg_continue_with_apple".tr,
                leftIcon: Container(
                    margin: EdgeInsets.only(right: 7.h),
                    child: CustomImageView(
                        imagePath: ImageConstant.imgIconOnerror,
                        height: 24.adaptSize,
                        width: 24.adaptSize)),
                buttonStyle: CustomButtonStyles.outlineOnError,
                buttonTextStyle: CustomTextStyles.titleLargeOnError),
            SizedBox(height: 27.v),
            _buildOrSection(context),
            SizedBox(height: 24.v),
            CustomElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.signInScreen);
              },
                text: "msg_sign_in_with_password".tr,
                buttonStyle: CustomButtonStyles.fillDeepPurpleA,
                buttonTextStyle: theme.textTheme.titleLarge!),
            SizedBox(height: 25.v),
            RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "msg_don_t_have_an_account2".tr,
                      style: CustomTextStyles.titleMediumGray700_1),
                  TextSpan(
                      text: "lbl_sign_up".tr,
                      style: CustomTextStyles.titleMediumOnSecondaryContainer)
                ]),
                textAlign: TextAlign.left),
            SizedBox(height: 5.v)
          ]),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOrSection(BuildContext context) {
    return SizedBox(
        height: 20.v,
        width: 343.h,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgShapeOnerror,
              height: 2.v,
              width: 343.h,
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top: 7.v)),
          Align(
            alignment: Alignment.center,
            child:
                Text("lbl_or".tr, style: CustomTextStyles.titleMediumGray700_2),
          )
        ]));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
