import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/app_bar/appbar_subtitle.dart';
import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';
import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';
import 'package:rocketfly/widgets/custom_text_form_field.dart';
import 'provider/my_wallet_provider.dart';

class MyWalletScreen extends StatefulWidget {
  const MyWalletScreen({Key? key}) : super(key: key);

  @override
  MyWalletScreenState createState() => MyWalletScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => MyWalletProvider(), child: MyWalletScreen());
  }
}

// ignore_for_file: must_be_immutable
class MyWalletScreenState extends State<MyWalletScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

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
            body: SizedBox(
                height: 723.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.center, children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: SizedBox(height: 768.v, width: double.maxFinite)),
                  Align(
                      alignment: Alignment.center,
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        _buildWalletRow(context),
                        SizedBox(height: 19.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 15.h),
                                child: Text("msg_you_can_add_up_to".tr,
                                    style: theme.textTheme.titleMedium))),
                        SizedBox(height: 31.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                                width: 320.h,
                                margin:
                                    EdgeInsets.only(left: 16.h, right: 39.h),
                                child: Text("msg_maximum_limit_to".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles.bodyLarge16
                                        .copyWith(height: 1.50)))),
                        SizedBox(height: 23.v),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.h),
                            child: Selector<MyWalletProvider,
                                    TextEditingController?>(
                                selector: (context, provider) =>
                                    provider.amountController,
                                builder: (context, amountController, child) {
                                  return CustomTextFormField(
                                      controller: amountController,
                                      hintText: "lbl_enter_amount".tr,
                                      hintStyle: theme.textTheme.bodyLarge!,
                                      textInputAction: TextInputAction.done,
                                      prefix: Container(
                                          margin: EdgeInsets.all(12.h),
                                          child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgIcon37,
                                              height: 24.adaptSize,
                                              width: 24.adaptSize)),
                                      prefixConstraints:
                                          BoxConstraints(maxHeight: 48.v));
                                })),
                        SizedBox(height: 24.v),
                        _buildPaymentMethodRow(context),
                        SizedBox(height: 16.v),
                        _buildTabview(context),
                        _buildTabBarView(context)
                      ]))
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 45.v,
        centerTitle: true,
        title: Column(children: [
          Padding(
              padding: EdgeInsets.only(left: 16.h, right: 145.h),
              child: Row(children: [
                AppbarTitleImage(
                    imagePath: ImageConstant.imgArrowLeftPrimary,
                    onTap: () {
                      onTapArrowLeft(context);
                    }),
                AppbarSubtitle(
                    text: "lbl_my_wallet".tr,
                    margin: EdgeInsets.only(left: 107.h, top: 2.v, bottom: 2.v))
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
  Widget _buildWalletRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("lbl_wallet".tr, style: CustomTextStyles.headlineLargeRegular),
          Padding(
              padding: EdgeInsets.only(top: 6.v),
              child: Text("lbl_220_50".tr,
                  style: CustomTextStyles.titleLargeLatoGreen400))
        ]));
  }

  /// Section Widget
  Widget _buildPaymentMethodRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 3.v),
              child: Text("msg_select_payment_method".tr,
                  style: CustomTextStyles.titleMediumLeagueSpartanPrimary)),
          Spacer(),
          Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: Text("lbl_add".tr,
                  style: CustomTextStyles.titleMediumSemiBold)),
          CustomImageView(
              imagePath: ImageConstant.imgIconErrorcontainer24x24,
              height: 24.adaptSize,
              width: 24.adaptSize)
        ]));
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
                      decoration: AppDecoration.outlineYellow.copyWith(
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
                      decoration: AppDecoration.outlinePrimary3.copyWith(
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

  /// Section Widget
  Widget _buildTabBarView(BuildContext context) {
    return SizedBox(
        height: 362.v,
        child: TabBarView(controller: tabviewController, children: [
          Container(),
          Container(),
          Container(),
          Container(),
          Container(),
          Container()
        ]),);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
