import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/core/utils/validation_functions.dart';
import 'package:rocketfly/widgets/app_bar/appbar_subtitle.dart';
import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';
import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';
import 'package:rocketfly/widgets/custom_elevated_button.dart';
import 'package:rocketfly/widgets/custom_switch.dart';
import 'package:rocketfly/widgets/custom_text_form_field.dart';
import 'provider/payment_method_paypal_provider.dart';

class PaymentMethodPaypalScreen extends StatefulWidget {
  const PaymentMethodPaypalScreen({Key? key}) : super(key: key);

  @override
  PaymentMethodPaypalScreenState createState() =>
      PaymentMethodPaypalScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => PaymentMethodPaypalProvider(),
        child: PaymentMethodPaypalScreen());
  }
}

// ignore_for_file: must_be_immutable
class PaymentMethodPaypalScreenState extends State<PaymentMethodPaypalScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Form(key: _formKey, child: _buildPaymentMethod(context))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 35.v,
        centerTitle: true,
        title: Column(children: [
          Padding(
              padding: EdgeInsets.only(left: 16.h, right: 116.h),
              child: Row(children: [
                AppbarTitleImage(
                    imagePath: ImageConstant.imgArrowLeftPrimary,
                    onTap: () {
                      onTapArrowLeft(context);
                    }),
                AppbarSubtitle(
                    text: "lbl_payment_method".tr,
                    margin: EdgeInsets.only(left: 78.h, top: 2.v, bottom: 2.v))
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
  Widget _buildPaymentMethod(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(top: 70.v, bottom: 5.v),
        child: IntrinsicWidth(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          Padding(
              padding: EdgeInsets.only(right: 81.h),
              child: Text("msg_choose_your_payment".tr,
                  style: theme.textTheme.titleMedium)),
          SizedBox(height: 32.v),
          Row(mainAxisSize: MainAxisSize.min, children: [
            Container(
                height: 49.v,
                width: 70.h,
                padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 12.v),
                decoration: AppDecoration.outlinePrimary3
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
                child: CustomImageView(
                    imagePath: ImageConstant.imgApplepay,
                    height: 21.v,
                    width: 50.h,
                    alignment: Alignment.center)),
            Container(
                height: 49.v,
                width: 70.h,
                margin: EdgeInsets.only(left: 8.h),
                padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 11.v),
                decoration: AppDecoration.outlinePrimary3
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
                child: CustomImageView(
                    imagePath: ImageConstant.imgGooglepay,
                    height: 20.v,
                    width: 50.h,
                    alignment: Alignment.bottomCenter)),
            Container(
                height: 49.v,
                width: 70.h,
                margin: EdgeInsets.only(left: 8.h),
                padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 15.v),
                decoration: AppDecoration.outlinePrimary3
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
                child: CustomImageView(
                    imagePath: ImageConstant.imgVisaLogo,
                    height: 15.v,
                    width: 49.h,
                    alignment: Alignment.center)),
            Container(
                height: 49.v,
                width: 70.h,
                margin: EdgeInsets.only(left: 8.h),
                padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 9.v),
                decoration: AppDecoration.outlineYellow
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
                child: CustomImageView(
                    imagePath: ImageConstant.imgPaypal,
                    height: 26.v,
                    width: 22.h,
                    alignment: Alignment.center)),
            Container(
                height: 49.v,
                width: 70.h,
                margin: EdgeInsets.only(left: 8.h),
                padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 9.v),
                decoration: AppDecoration.outlinePrimary3
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
                child: CustomImageView(
                    imagePath: ImageConstant.imgMastercard,
                    height: 27.v,
                    width: 46.h,
                    alignment: Alignment.topCenter))
          ]),
          SizedBox(height: 32.v),
          Opacity(opacity: 0.08, child: Divider(indent: 58.h, endIndent: 16.h)),
          SizedBox(height: 32.v),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 58.h),
                  child: Text("lbl_paypal".tr,
                      style: theme.textTheme.headlineSmall))),
          SizedBox(height: 16.v),
          Padding(
              padding: EdgeInsets.only(left: 58.h, right: 16.h),
              child:
                  Selector<PaymentMethodPaypalProvider, TextEditingController?>(
                      selector: (context, provider) => provider.emailController,
                      builder: (context, emailController, child) {
                        return CustomTextFormField(
                            controller: emailController,
                            hintText: "msg_enter_registered".tr,
                            hintStyle: theme.textTheme.bodyLarge!,
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value == null ||
                                  (!isValidEmail(value, isRequired: true))) {
                                return "err_msg_please_enter_valid_email".tr;
                              }
                              return null;
                            },
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 12.h, vertical: 13.v));
                      })),
          Spacer(),
          Padding(
              padding: EdgeInsets.only(left: 58.h, right: 16.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(top: 6.v, bottom: 4.v),
                        child: Text("msg_save_information".tr,
                            style: CustomTextStyles.titleMediumPrimary_1)),
                    Selector<PaymentMethodPaypalProvider, bool?>(
                        selector: (context, provider) =>
                            provider.isSelectedSwitch,
                        builder: (context, isSelectedSwitch, child) {
                          return CustomSwitch(
                              value: isSelectedSwitch,
                              onChange: (value) {
                                context
                                    .read<PaymentMethodPaypalProvider>()
                                    .changeSwitchBox(value);
                              });
                        })
                  ])),
          SizedBox(height: 32.v),
          CustomElevatedButton(
              text: "lbl_save".tr,
              margin: EdgeInsets.only(left: 58.h, right: 16.h))
        ])));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
