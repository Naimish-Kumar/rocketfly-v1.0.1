import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/core/utils/validation_functions.dart';
import 'package:rocketfly/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';
import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';
import 'package:rocketfly/widgets/custom_elevated_button.dart';
import 'package:rocketfly/widgets/custom_icon_button.dart';
import 'package:rocketfly/widgets/custom_text_form_field.dart';
import 'provider/profile_edit_provider.dart';

class ProfileEditScreen extends StatefulWidget {
  const ProfileEditScreen({Key? key}) : super(key: key);

  @override
  ProfileEditScreenState createState() => ProfileEditScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ProfileEditProvider(), child: ProfileEditScreen());
  }
}

// ignore_for_file: must_be_immutable
class ProfileEditScreenState extends State<ProfileEditScreen> {
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
            backgroundColor: theme.colorScheme.primary,
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.h, vertical: 22.v),
                    child: Column(children: [
                      SizedBox(
                          height: 105.adaptSize,
                          width: 105.adaptSize,
                          child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Opacity(
                                    opacity: 0.3,
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgPlaceHolder,
                                        height: 48.v,
                                        width: 65.h,
                                        alignment: Alignment.center)),
                                CustomIconButton(
                                    height: 40.adaptSize,
                                    width: 40.adaptSize,
                                    padding: EdgeInsets.all(8.h),
                                    decoration:
                                        IconButtonStyleHelper.fillDeepPurpleA,
                                    alignment: Alignment.bottomRight,
                                    child: CustomImageView(
                                        imagePath: ImageConstant
                                            .imgButtonImageChangePrimary)),
                                CustomImageView(
                                    imagePath: ImageConstant.img0047,
                                    height: 105.adaptSize,
                                    width: 105.adaptSize,
                                    radius: BorderRadius.circular(52.h),
                                    alignment: Alignment.center)
                              ])),
                      SizedBox(height: 32.v),
                      _buildName(context),
                      SizedBox(height: 16.v),
                      _buildEmail(context),
                      SizedBox(height: 16.v),
                      _buildArrowDown(context),
                      SizedBox(height: 56.v),
                      _buildSaveChanges(context),
                      SizedBox(height: 5.v)
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: Column(children: [
          Padding(
              padding: EdgeInsets.only(left: 16.h, right: 141.h),
              child: Row(children: [
                AppbarTitleImage(
                    imagePath: ImageConstant.imgArrowLeft,
                    onTap: () {
                      onTapArrowLeft(context);
                    }),
                AppbarSubtitleTwo(
                    text: "lbl_profile_edit".tr,
                    margin: EdgeInsets.only(left: 103.h, bottom: 4.v))
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
  Widget _buildName(BuildContext context) {
    return Selector<ProfileEditProvider, TextEditingController?>(
        selector: (context, provider) => provider.nameController,
        builder: (context, nameController, child) {
          return CustomTextFormField(
              controller: nameController,
              hintText: "lbl_jessica_smith".tr,
              hintStyle: CustomTextStyles.bodyLargeOnError,
              prefix: Container(
                  margin: EdgeInsets.all(12.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgIcon2,
                      height: 24.adaptSize,
                      width: 24.adaptSize)),
              prefixConstraints: BoxConstraints(maxHeight: 48.v),
              borderDecoration: TextFormFieldStyleHelper.fillGray,
              fillColor: appTheme.gray700);
        });
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Selector<ProfileEditProvider, TextEditingController?>(
        selector: (context, provider) => provider.emailController,
        builder: (context, emailController, child) {
          return CustomTextFormField(
              controller: emailController,
              hintText: "msg_jessicasmith_mail_com".tr,
              hintStyle: CustomTextStyles.bodyLargeOnError,
              textInputType: TextInputType.emailAddress,
              prefix: Container(
                  margin: EdgeInsets.fromLTRB(12.h, 12.v, 11.h, 12.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgIconOnerror24x24,
                      height: 24.adaptSize,
                      width: 24.adaptSize)),
              prefixConstraints: BoxConstraints(maxHeight: 48.v),
              validator: (value) {
                if (value == null || (!isValidEmail(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_email".tr;
                }
                return null;
              },
              borderDecoration: TextFormFieldStyleHelper.fillGray,
              fillColor: appTheme.gray700);
        });
  }

  /// Section Widget
  Widget _buildArrowDown(BuildContext context) {
    return Selector<ProfileEditProvider, TextEditingController?>(
        selector: (context, provider) => provider.arrowDownController,
        builder: (context, arrowDownController, child) {
          return CustomTextFormField(
              controller: arrowDownController,
              hintText: "lbl_123_456_7890".tr,
              hintStyle: CustomTextStyles.bodyLargeOnError,
              textInputAction: TextInputAction.done,
              prefix: Padding(
                  padding: EdgeInsets.fromLTRB(12.h, 12.v, 30.h, 12.v),
                  child: Row(mainAxisSize: MainAxisSize.min, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imageNotFound,
                        height: 16.74.v,
                        width: 28.h),
                    CustomImageView(
                        imagePath: ImageConstant.imageNotFound,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.fromLTRB(30.h, 12.v, 12.h, 12.v))
                  ])),
              prefixConstraints: BoxConstraints(maxHeight: 48.v),
              borderDecoration: TextFormFieldStyleHelper.fillGray,
              fillColor: appTheme.gray700);
        });
  }

  /// Section Widget
  Widget _buildSaveChanges(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_save_changes".tr,
        buttonStyle: CustomButtonStyles.fillDeepPurpleA,
        buttonTextStyle: theme.textTheme.titleLarge!);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
