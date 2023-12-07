import 'models/payment_method_visa_pay_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/app_bar/appbar_subtitle.dart';
import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';
import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';
import 'provider/payment_method_visa_pay_provider.dart';

class PaymentMethodVisaPayScreen extends StatefulWidget {
  const PaymentMethodVisaPayScreen({Key? key}) : super(key: key);

  @override
  PaymentMethodVisaPayScreenState createState() =>
      PaymentMethodVisaPayScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => PaymentMethodVisaPayProvider(),
        child: PaymentMethodVisaPayScreen());
  }
}

// ignore_for_file: must_be_immutable
class PaymentMethodVisaPayScreenState extends State<PaymentMethodVisaPayScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 6, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      Text("msg_choose_your_payment".tr,
                          style: theme.textTheme.titleMedium),
                      SizedBox(height: 32.v),
                      _buildTabview(context),
                      SizedBox(
                          height: 586.v,
                          child: TabBarView(
                              controller: tabviewController,
                              children: [
                                Container(),
                                Container(),
                                Container(),
                                Container(),
                                Container(),
                                Container()
                              ]))
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 45.v,
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
  Widget _buildTabview(BuildContext context) {
    return Container(
        height: 49.v,
        width: 359.h,
        child: TabBar(
            controller: tabviewController,
            isScrollable: true,
            indicator: BoxDecoration(
                color: theme.colorScheme.onPrimaryContainer,
                borderRadius: BorderRadius.circular(4.h),
                border: Border.all(color: appTheme.yellow900, width: 1.h)),
            tabs: [
              Tab(
                  child: Container(
                      height: 49.v,
                      width: 70.h,
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.h, vertical: 12.v),
                      decoration: AppDecoration.outlinePrimary3.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder4),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgApplepay,
                          height: 21.v,
                          width: 50.h,
                          alignment: Alignment.center))),
              Tab(
                  child: Container(
                      height: 49.v,
                      width: 70.h,
                      padding:
                          EdgeInsets.symmetric(horizontal: 9.h, vertical: 12.v),
                      decoration: AppDecoration.outlinePrimary3.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder4),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgGooglepay,
                          height: 20.v,
                          width: 50.h,
                          alignment: Alignment.bottomCenter))),
              Tab(
                  child: Container(
                      height: 49.v,
                      width: 70.h,
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.h, vertical: 15.v),
                      decoration: AppDecoration.outlineYellow.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder4),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgVisaLogo,
                          height: 15.v,
                          width: 49.h,
                          alignment: Alignment.topCenter))),
              Tab(
                  child: Container(
                      height: 49.v,
                      width: 70.h,
                      padding: EdgeInsets.symmetric(
                          horizontal: 22.h, vertical: 10.v),
                      decoration: AppDecoration.outlinePrimary3.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder4),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgPaypal,
                          height: 26.v,
                          width: 22.h,
                          alignment: Alignment.center))),
              Tab(
                  child: Container(
                      height: 49.v,
                      width: 70.h,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.h, vertical: 9.v),
                      decoration: AppDecoration.outlinePrimary3.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder4),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgMastercard,
                          height: 27.v,
                          width: 46.h,
                          alignment: Alignment.topCenter))),
              Tab(
                  child: Container(
                      height: 49.v,
                      width: 70.h,
                      padding:
                          EdgeInsets.symmetric(horizontal: 13.h, vertical: 8.v),
                      decoration: AppDecoration.outlinePrimary3.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder4),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgApay,
                          height: 26.v,
                          width: 42.h,
                          alignment: Alignment.bottomCenter)))
            ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
