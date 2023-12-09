import '../apply_coupon_screen/widgets/mobileapplicationlist_item_widget.dart';
import 'models/mobileapplicationlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';
import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';
import 'package:rocketfly/widgets/custom_elevated_button.dart';
import 'package:rocketfly/widgets/custom_text_form_field.dart';
import 'provider/apply_coupon_provider.dart';

class ApplyCouponScreen extends StatefulWidget {
  const ApplyCouponScreen({Key? key}) : super(key: key);

  @override
  ApplyCouponScreenState createState() => ApplyCouponScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ApplyCouponProvider(), child: ApplyCouponScreen());
  }
}

class ApplyCouponScreenState extends State<ApplyCouponScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
            backgroundColor: theme.colorScheme.primary,
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 22.v),
                child: SafeArea(
                  child: Column(children: [
                    Selector<ApplyCouponProvider, TextEditingController?>(
                        selector: (context, provider) =>
                            provider.couponCodeController,
                        builder: (context, couponCodeController, child) {
                          return CustomTextFormField(
                              controller: couponCodeController,
                              hintText: "msg_enter_your_coupon".tr,
                              hintStyle: CustomTextStyles.bodyLargeGray700,
                              textInputAction: TextInputAction.done,
                              prefix: Container(
                                  margin: EdgeInsets.all(12.h),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgIconPrimary,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize)),
                              prefixConstraints: BoxConstraints(maxHeight: 48.v),
                              borderDecoration: TextFormFieldStyleHelper.fillGray,
                              fillColor: appTheme.gray700);
                        }),
                    SizedBox(height: 32.v),
                    CustomElevatedButton(
                        text: "lbl_apply".tr,
                        buttonStyle: CustomButtonStyles.fillDeepPurpleA,
                        buttonTextStyle: theme.textTheme.titleLarge!),
                    SizedBox(height: 32.v),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text("msg_available_coupons".tr,
                            style: CustomTextStyles.headlineSmallOnError_1)),
                    SizedBox(height: 33.v),
                    _buildMobileApplicationList(context)
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
                    imagePath: ImageConstant.imgArrowLeft,
                    onTap: () {
                      onTapArrowLeft(context);
                    }),
                AppbarSubtitleTwo(
                    text: "lbl_add_coupon".tr,
                    margin: EdgeInsets.only(left: 96.h, top: 2.v, bottom: 2.v))
              ])),
          SizedBox(height: 10.v),
          Opacity(
              opacity: 0.08,
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                      width: double.maxFinite,
                      child: Divider(color: theme.colorScheme.onError))))
        ]),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildMobileApplicationList(BuildContext context) {
    return Consumer<ApplyCouponProvider>(builder: (context, provider, child) {
      return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return Opacity(
                opacity: 0.08,
                child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.0.v),
                    child: SizedBox(
                        width: 343.h,
                        child: Divider(
                            height: 1.v,
                            thickness: 1.v,
                            color: theme.colorScheme.onError))));
          },
          itemCount:
              provider.applyCouponModelObj.mobileapplicationlistItemList.length,
          itemBuilder: (context, index) {
            MobileapplicationlistItemModel model = provider
                .applyCouponModelObj.mobileapplicationlistItemList[index];
            return MobileapplicationlistItemWidget(model);
          });
    });
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
