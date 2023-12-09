import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/app_bar/appbar_subtitle.dart';
import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';
import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';
import 'package:rocketfly/widgets/custom_elevated_button.dart';
import 'package:rocketfly/widgets/custom_text_form_field.dart';
import 'provider/apply_coupon_screen_one_provider.dart';

class ApplyCouponScreenOneScreen extends StatefulWidget {
  const ApplyCouponScreenOneScreen({Key? key}) : super(key: key);

  @override
  ApplyCouponScreenOneScreenState createState() =>
      ApplyCouponScreenOneScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ApplyCouponScreenOneProvider(),
        child: ApplyCouponScreenOneScreen());
  }
}

class ApplyCouponScreenOneScreenState
    extends State<ApplyCouponScreenOneScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 22.v),
                child: SafeArea(
                  child: Column(children: [
                    Selector<ApplyCouponScreenOneProvider,
                            TextEditingController?>(
                        selector: (context, provider) =>
                            provider.couponCodeController,
                        builder: (context, couponCodeController, child) {
                          return CustomTextFormField(
                              controller: couponCodeController,
                              hintText: "msg_enter_your_coupon".tr,
                              hintStyle: theme.textTheme.bodyLarge!,
                              textInputAction: TextInputAction.done,
                              prefix: Container(
                                  margin: EdgeInsets.all(12.h),
                                  child: CustomImageView(
                                      imagePath:
                                          ImageConstant.imgIconOnprimarycontainer,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize)),
                              prefixConstraints: BoxConstraints(maxHeight: 48.v));
                        }),
                    SizedBox(height: 32.v),
                    CustomElevatedButton(text: "lbl_apply".tr),
                    SizedBox(height: 32.v),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text("msg_available_coupons".tr,
                            style: theme.textTheme.headlineSmall)),
                    SizedBox(height: 8.v),
                    Opacity(opacity: 0.08, child: Divider()),
                    SizedBox(height: 24.v),
                    _buildOne(context),
                    SizedBox(height: 24.v),
                    _buildTwo(context),
                    SizedBox(height: 24.v),
                    _buildThree(context),
                    SizedBox(height: 5.v)
                  ]),
                )));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: Column(children: [
          Padding(
              padding: EdgeInsets.only(left: 16.h, right: 135.h),
              child: Row(children: [
                AppbarTitleImage(
                    imagePath: ImageConstant.imgArrowLeftPrimary,
                    onTap: () {
                      onTapArrowLeft(context);
                    }),
                AppbarSubtitle(
                    text: "lbl_add_coupon".tr,
                    margin: EdgeInsets.only(left: 96.h, top: 2.v, bottom: 2.v))
              ])),
          SizedBox(height: 10.v),
          Opacity(
              opacity: 0.08,
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(width: double.maxFinite, child: Divider())))
        ]),
        styleType: Style.bgFill_1);
  }

  /// Section Widget
  Widget _buildOne(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 1.v, bottom: 2.v),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("msg_mobile_application".tr,
                style: CustomTextStyles.titleMediumPrimarySemiBold_1),
            SizedBox(height: 6.v),
            Text("msg_activation_code".tr,
                style: CustomTextStyles.titleSmallErrorContainer_1)
          ])),
      _buildTwentyFive(context,
          userStatus: "lbl_10".tr,
          statusLabel: "lbl2".tr,
          statusOffLabel: "lbl_off".tr)
    ]);
  }

  /// Section Widget
  Widget _buildTwo(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 1.v, bottom: 2.v),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("msg_java_from_scratch".tr,
                style: CustomTextStyles.titleMediumPrimarySemiBold_1),
            SizedBox(height: 6.v),
            Text("msg_activation_code2".tr,
                style: CustomTextStyles.titleSmallErrorContainer_1)
          ])),
      _buildTwentyFive(context,
          userStatus: "lbl_25".tr,
          statusLabel: "lbl2".tr,
          statusOffLabel: "lbl_off".tr)
    ]);
  }

  /// Section Widget
  Widget _buildThree(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 1.v, bottom: 2.v),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("msg_instagram_marketing".tr,
                style: CustomTextStyles.titleMediumPrimarySemiBold_1),
            SizedBox(height: 6.v),
            Text("msg_activation_code3".tr,
                style: CustomTextStyles.titleSmallErrorContainer_1)
          ])),
      _buildTwentyFive(context,
          userStatus: "lbl_40".tr,
          statusLabel: "lbl2".tr,
          statusOffLabel: "lbl_off".tr)
    ]);
  }

  /// Common widget
  Widget _buildTwentyFive(
    BuildContext context, {
    required String userStatus,
    required String statusLabel,
    required String statusOffLabel,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 4.v),
        decoration: AppDecoration.fillErrorContainer
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: Text(userStatus,
                  style: CustomTextStyles.headlineLargeLato
                      .copyWith(color: theme.colorScheme.primary))),
          Padding(
              padding: EdgeInsets.only(left: 4.h, top: 5.v, bottom: 4.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(statusLabel,
                        style: CustomTextStyles.labelLargePrimary
                            .copyWith(color: theme.colorScheme.primary)),
                    Text(statusOffLabel,
                        style: CustomTextStyles.labelLargePrimary
                            .copyWith(color: theme.colorScheme.primary))
                  ]))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
