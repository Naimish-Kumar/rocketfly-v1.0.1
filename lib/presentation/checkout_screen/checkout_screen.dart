import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/app_bar/appbar_subtitle.dart';
import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';
import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';
import 'package:rocketfly/widgets/custom_elevated_button.dart';
import 'package:rocketfly/widgets/custom_icon_button.dart';
import 'package:rocketfly/widgets/custom_text_form_field.dart';
import 'provider/checkout_provider.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  CheckoutScreenState createState() => CheckoutScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => CheckoutProvider(), child: CheckoutScreen());
  }
}

class CheckoutScreenState extends State<CheckoutScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                height: 768.v,
                width: double.maxFinite,
                child: SafeArea(
                  child: Stack(alignment: Alignment.topCenter, children: [
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            padding: EdgeInsets.symmetric(vertical: 10.v),
                            child:
                                Column(mainAxisSize: MainAxisSize.min, children: [
                              _buildAppBar(context),
                              SizedBox(height: 32.v),
                              _buildDesign(context),
                              SizedBox(height: 23.v),
                              Opacity(
                                  opacity: 0.08,
                                  child: Divider(indent: 16.h, endIndent: 16.h)),
                              Spacer(),
                              Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                                  child: _buildPaymentMethod(context,
                                      paymentMethod: "lbl_apply_coupon".tr,
                                      addText: "lbl_add".tr)),
                              SizedBox(height: 16.v),
                              Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                                  child: Selector<CheckoutProvider,
                                          TextEditingController?>(
                                      selector: (context, provider) =>
                                          provider.couponCodeController,
                                      builder:
                                          (context, couponCodeController, child) {
                                        return CustomTextFormField(
                                            controller: couponCodeController,
                                            hintText: "msg_enter_your_coupon".tr,
                                            hintStyle: theme.textTheme.bodyLarge!,
                                            textInputAction: TextInputAction.done,
                                            prefix: Container(
                                                margin: EdgeInsets.all(12.h),
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgIconOnprimarycontainer,
                                                    height: 24.adaptSize,
                                                    width: 24.adaptSize)),
                                            prefixConstraints:
                                                BoxConstraints(maxHeight: 48.v));
                                      })),
                              SizedBox(height: 31.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 16.h),
                                      child: Text("lbl_price".tr,
                                          style: CustomTextStyles
                                              .titleMediumLeagueSpartanPrimary))),
                              SizedBox(height: 7.v),
                              _buildShape(context),
                              SizedBox(height: 39.v),
                              CustomElevatedButton(
                                  text: "lbl_pay_now".tr,
                                  margin: EdgeInsets.symmetric(horizontal: 16.h)),
                              SizedBox(height: 40.v)
                            ]))),
                    _buildPaymentMethod2(context)
                  ]),
                )));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 35.v,
        centerTitle: true,
        title: Column(children: [
          Padding(
              padding: EdgeInsets.only(left: 16.h, right: 157.h),
              child: Row(children: [
                AppbarTitleImage(
                    imagePath: ImageConstant.imgArrowLeftPrimary,
                    onTap: () {
                      onTapArrowLeft(context);
                    }),
                AppbarSubtitle(
                    text: "lbl_review".tr,
                    margin: EdgeInsets.only(left: 118.h, bottom: 4.v))
              ])),
          SizedBox(height: 10.v),
          Opacity(
              opacity: 0.08,
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(width: double.maxFinite, child: Divider())))
        ]),
        styleType: Style.bgFill_2);
  }

  /// Section Widget
  Widget _buildDesign(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              height: 128.adaptSize,
              width: 128.adaptSize,
              padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 34.v),
              decoration: AppDecoration.fillBlueGray
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
              child: Opacity(
                  opacity: 0.3,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgPlaceHolderErrorcontainer,
                      height: 60.v,
                      width: 81.h,
                      alignment: Alignment.center))),
          Padding(
              padding: EdgeInsets.only(left: 12.h),
              child: Column(children: [
                SizedBox(
                    width: 203.h,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomElevatedButton(
                              height: 28.v,
                              width: 47.h,
                              text: "lbl_design".tr,
                              buttonStyle:
                                  CustomButtonStyles.fillErrorContainer,
                              buttonTextStyle: theme.textTheme.labelMedium!),
                          CustomIconButton(
                              height: 28.adaptSize,
                              width: 28.adaptSize,
                              padding: EdgeInsets.all(5.h),
                              decoration:
                                  IconButtonStyleHelper.fillErrorContainer,
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgButtonBookmark))
                        ])),
                SizedBox(height: 12.v),
                SizedBox(
                    height: 64.v,
                    width: 203.h,
                    child: Stack(alignment: Alignment.center, children: [
                      Align(
                          alignment: Alignment.bottomRight,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant
                                        .imgIconErrorcontainer16x16,
                                    height: 16.adaptSize,
                                    width: 16.adaptSize),
                                Padding(
                                    padding: EdgeInsets.only(left: 4.h),
                                    child: Text("lbl_1h_30m".tr,
                                        style: theme.textTheme.labelLarge))
                              ])),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: EdgeInsets.only(right: 3.h),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                        width: 199.h,
                                        child: Text("msg_responsive_design".tr,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: theme.textTheme.titleSmall!
                                                .copyWith(height: 1.29))),
                                    SizedBox(height: 11.v),
                                    Row(children: [
                                      Text("lbl_149_00".tr,
                                          style: CustomTextStyles
                                              .labelLargePrimary_1),
                                      Padding(
                                          padding: EdgeInsets.only(left: 4.h),
                                          child: Text("lbl_199_00".tr,
                                              style: CustomTextStyles
                                                  .labelMediumErrorContainer
                                                  .copyWith(
                                                      decoration: TextDecoration
                                                          .lineThrough)))
                                    ])
                                  ])))
                    ])),
                SizedBox(height: 7.v),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgIconYellow900,
                      height: 16.adaptSize,
                      width: 16.adaptSize),
                  Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "lbl_4".tr,
                                style: theme.textTheme.labelLarge),
                            TextSpan(
                                text: "lbl".tr,
                                style: theme.textTheme.labelLarge),
                            TextSpan(
                                text: "lbl_3".tr,
                                style: theme.textTheme.labelLarge),
                            TextSpan(text: " "),
                            TextSpan(
                                text: "lbl_3_7k_ratings".tr,
                                style: theme.textTheme.labelLarge),
                            TextSpan(
                                text: "lbl_104_2k".tr,
                                style: theme.textTheme.labelLarge),
                            TextSpan(
                                text: "lbl_students".tr,
                                style: theme.textTheme.labelLarge)
                          ]),
                          textAlign: TextAlign.left))
                ])
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildShape(BuildContext context) {
    return SizedBox(
        height: 103.v,
        width: 343.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgShapePrimary,
              height: 74.v,
              width: 343.h,
              alignment: Alignment.topCenter),
          Align(
              alignment: Alignment.bottomCenter,
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                _buildCouponOffer(context,
                    couponOfferText: "lbl_1_items".tr,
                    priceText: "lbl_149_00".tr),
                SizedBox(height: 11.v),
                _buildCouponOffer(context,
                    couponOfferText: "lbl_coupon_offer".tr,
                    priceText: "lbl_00_00".tr),
                SizedBox(height: 23.v),
                _buildCouponOffer(context,
                    couponOfferText: "lbl_total_price".tr,
                    priceText: "lbl_149_00".tr)
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildPaymentMethod2(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.only(left: 16.h, top: 262.v),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(right: 16.h),
                      child: _buildPaymentMethod(context,
                          paymentMethod: "lbl_payment_method".tr,
                          addText: "lbl_add".tr)),
                  SizedBox(height: 16.v),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: IntrinsicWidth(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                            Container(
                                height: 49.v,
                                width: 70.h,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8.h, vertical: 12.v),
                                decoration: AppDecoration.outlinePrimary3
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder4),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgApplepay,
                                    height: 21.v,
                                    width: 50.h,
                                    alignment: Alignment.center)),
                            Container(
                                height: 49.v,
                                width: 70.h,
                                margin: EdgeInsets.only(left: 8.h),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 9.h, vertical: 11.v),
                                decoration: AppDecoration.outlineYellow
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder4),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgGooglepay,
                                    height: 20.v,
                                    width: 50.h,
                                    alignment: Alignment.bottomCenter)),
                            Container(
                                height: 49.v,
                                width: 70.h,
                                margin: EdgeInsets.only(left: 8.h),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8.h, vertical: 15.v),
                                decoration: AppDecoration.outlinePrimary3
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder4),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgVisaLogo,
                                    height: 15.v,
                                    width: 49.h,
                                    alignment: Alignment.center)),
                            Container(
                                height: 49.v,
                                width: 70.h,
                                margin: EdgeInsets.only(left: 8.h),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 22.h, vertical: 9.v),
                                decoration: AppDecoration.outlinePrimary3
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder4),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgPaypal,
                                    height: 26.v,
                                    width: 22.h,
                                    alignment: Alignment.center)),
                            Container(
                                height: 49.v,
                                width: 70.h,
                                margin: EdgeInsets.only(left: 8.h),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10.h, vertical: 9.v),
                                decoration: AppDecoration.outlinePrimary3
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder4),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgMastercard,
                                    height: 27.v,
                                    width: 46.h,
                                    alignment: Alignment.topCenter)),
                            Container(
                                height: 49.v,
                                width: 70.h,
                                margin: EdgeInsets.only(left: 8.h),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 13.h, vertical: 8.v),
                                decoration: AppDecoration.outlinePrimary3
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder4),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgApay,
                                    height: 26.v,
                                    width: 42.h,
                                    alignment: Alignment.bottomCenter))
                          ])))
                ])));
  }

  /// Common widget
  Widget _buildCouponOffer(
    BuildContext context, {
    required String couponOfferText,
    required String priceText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 3.v, bottom: 1.v),
          child: Text(couponOfferText,
              style: CustomTextStyles.bodyMediumErrorContainer
                  .copyWith(color: theme.colorScheme.errorContainer))),
      RichText(
          text: TextSpan(children: [
            TextSpan(
                text: "lbl3".tr, style: CustomTextStyles.bodyMediumGreen400),
            TextSpan(
                text: "lbl_00_002".tr,
                style: CustomTextStyles.titleSmallGreen400)
          ]),
          textAlign: TextAlign.left)
    ]);
  }

  /// Common widget
  Widget _buildPaymentMethod(
    BuildContext context, {
    required String paymentMethod,
    required String addText,
  }) {
    return Row(children: [
      Text(paymentMethod,
          style: theme.textTheme.headlineSmall!
              .copyWith(color: theme.colorScheme.primary)),
      Spacer(),
      Padding(
          padding: EdgeInsets.only(top: 2.v),
          child: Text(addText,
              style: CustomTextStyles.titleMediumSemiBold
                  .copyWith(color: theme.colorScheme.errorContainer))),
      CustomImageView(
          imagePath: ImageConstant.imgIconErrorcontainer24x24,
          height: 24.adaptSize,
          width: 24.adaptSize)
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
