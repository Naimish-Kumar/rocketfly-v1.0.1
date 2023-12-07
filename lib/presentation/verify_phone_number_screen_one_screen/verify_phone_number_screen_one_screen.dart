import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/app_bar/appbar_subtitle.dart';
import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';
import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';
import 'package:rocketfly/widgets/custom_elevated_button.dart';
import 'package:rocketfly/widgets/custom_pin_code_text_field.dart';
import 'provider/verify_phone_number_screen_one_provider.dart';

class VerifyPhoneNumberScreenOneScreen extends StatefulWidget {
  const VerifyPhoneNumberScreenOneScreen({Key? key}) : super(key: key);

  @override
  VerifyPhoneNumberScreenOneScreenState createState() =>
      VerifyPhoneNumberScreenOneScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => VerifyPhoneNumberScreenOneProvider(),
        child: VerifyPhoneNumberScreenOneScreen());
  }
}

class VerifyPhoneNumberScreenOneScreenState
    extends State<VerifyPhoneNumberScreenOneScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
         // backgroundColor: Colors.white,
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.v),
                child: Column(children: [
                  _buildOtpView(context),
                  SizedBox(height: 32.v),
                  CustomElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,AppRoutes.resetPasswordScreen
                      );
                    },
                    text: "lbl_verify".tr),
                  Spacer(flex: 53),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 120.h),
                      child: DottedBorder(
                          color: theme.colorScheme.primary,
                          padding: EdgeInsets.only(
                              left: 2.h, top: 2.v, right: 2.h, bottom: 2.v),
                          strokeWidth: 2.h,
                          radius: Radius.circular(50),
                          borderType: BorderType.RRect,
                          dashPattern: [4, 4],
                          child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 19.h, vertical: 23.v),
                              decoration: AppDecoration.outlinePrimary.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder52),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 3.v),
                                    Text("lbl_50_sec".tr,
                                        style: CustomTextStyles
                                            .titleLargeLatoRegular),
                                    SizedBox(height: 3.v),
                                    Text("lbl_left".tr,
                                        style: theme.textTheme.titleMedium)
                                  ])))),
                  Spacer(flex: 46)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: Column(children: [
          Padding(
              padding: EdgeInsets.only(left: 16.h, right: 97.h),
              child: Row(children: [
                AppbarTitleImage(
                    imagePath: ImageConstant.imgArrowLeftPrimary,
                    onTap: () {
                      onTapArrowLeft(context);
                    }),
                AppbarSubtitle(
                    text: "msg_verify_phone_number".tr,
                    margin: EdgeInsets.only(left: 59.h, top: 2.v, bottom: 2.v),),
              ]),),
          SizedBox(height: 10.v),
          Opacity(
              opacity: 0.08,
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(width: double.maxFinite, child: Divider()),),)
        ]),
        styleType: Style.bgFill_2
        )
        ;
  }

  /// Section Widget
  Widget _buildOtpView(BuildContext context) {
    return SizedBox(
        height: 177.v,
        width: 343.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.center,
              child: Padding(
                  padding: EdgeInsets.only(left: 15.h),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            width: 312.h,
                            margin: EdgeInsets.only(right: 14.h),
                            child: Text("msg_please_enter_the".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.titleMedium!
                                    .copyWith(height: 1.50))),
                        SizedBox(height: 109.v),
                        Align(
                            alignment: Alignment.centerRight,
                            child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "lbl_not_yet_get".tr,
                                      style: theme.textTheme.titleMedium),
                                  TextSpan(
                                      text: "lbl_resend_otp".tr,
                                      style: CustomTextStyles
                                          .titleMediumPrimarySemiBold)
                                ]),
                                textAlign: TextAlign.left))
                      ],),),),
          Padding(
              padding: EdgeInsets.only(top: 77.v, bottom: 39.v),
              child: Selector<VerifyPhoneNumberScreenOneProvider,
                      TextEditingController?>(
                  selector: (context, provider) => provider.otpController,
                  builder: (context, otpController, child) {
                    return CustomPinCodeTextField(
                        context: context,
                        controller: otpController,
                        onChanged: (value) {
                          otpController?.text = value;
                        });
                  }))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
