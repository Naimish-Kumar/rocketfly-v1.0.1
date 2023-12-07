import 'models/profile_edit_screen_one_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/core/utils/validation_functions.dart';
import 'package:rocketfly/widgets/app_bar/appbar_subtitle.dart';
import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';
import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';
import 'package:rocketfly/widgets/custom_drop_down.dart';
import 'package:rocketfly/widgets/custom_elevated_button.dart';
import 'package:rocketfly/widgets/custom_icon_button.dart';
import 'package:rocketfly/widgets/custom_text_form_field.dart';
import 'provider/profile_edit_screen_one_provider.dart';

class ProfileEditScreenOneScreen extends StatefulWidget {
  const ProfileEditScreenOneScreen({Key? key}) : super(key: key);

  @override
  ProfileEditScreenOneScreenState createState() =>
      ProfileEditScreenOneScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ProfileEditScreenOneProvider(),
        child: ProfileEditScreenOneScreen());
  }
}

// ignore_for_file: must_be_immutable
class ProfileEditScreenOneScreenState
    extends State<ProfileEditScreenOneScreen> {
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
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        height: 105.adaptSize,
                                        width: 105.adaptSize,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 19.h, vertical: 28.v),
                                        decoration: AppDecoration.fillBlueGray
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder52),
                                        child: Opacity(
                                            opacity: 0.3,
                                            child: CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgPlaceHolderErrorcontainer,
                                                height: 48.v,
                                                width: 65.h,
                                                alignment: Alignment.center)))),
                                CustomIconButton(
                                    height: 40.adaptSize,
                                    width: 40.adaptSize,
                                    padding: EdgeInsets.all(8.h),
                                    decoration:
                                        IconButtonStyleHelper.fillPrimaryTL20,
                                    alignment: Alignment.bottomRight,
                                    child: CustomImageView(
                                        imagePath: ImageConstant
                                            .imgButtonImageChangeOnprimarycontainer40x40))
                              ])),
                      SizedBox(height: 32.v),
                      _buildName(context),
                      SizedBox(height: 16.v),
                      _buildEmail(context),
                      SizedBox(height: 16.v),
                      _buildMobileNumber(context),
                      SizedBox(height: 16.v),
                      Selector<ProfileEditScreenOneProvider,
                              ProfileEditScreenOneModel?>(
                          selector: (context, provider) =>
                              provider.profileEditScreenOneModelObj,
                          builder:
                              (context, profileEditScreenOneModelObj, child) {
                            return CustomDropDown(
                                icon: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        30.h, 12.v, 12.h, 12.v),
                                    child: CustomImageView(
                                        imagePath:
                                            ImageConstant.imgArrowLeftPrimary,
                                        height: 24.adaptSize,
                                        width: 24.adaptSize)),
                                hintText: "lbl_freelancer".tr,
                                hintStyle: theme.textTheme.bodyLarge!,
                                items: profileEditScreenOneModelObj
                                        ?.dropdownItemList ??
                                    [],
                                prefix: Container(
                                    margin: EdgeInsets.all(12.h),
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgIcon36,
                                        height: 24.adaptSize,
                                        width: 24.adaptSize)),
                                prefixConstraints:
                                    BoxConstraints(maxHeight: 48.v),
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 13.v),
                                onChanged: (value) {
                                  context
                                      .read<ProfileEditScreenOneProvider>()
                                      .onSelected(value);
                                });
                          }),
                      SizedBox(height: 32.v),
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
                    imagePath: ImageConstant.imgArrowLeftPrimary,
                    onTap: () {
                      onTapArrowLeft(context);
                    }),
                AppbarSubtitle(
                    text: "lbl_profile_edit".tr,
                    margin: EdgeInsets.only(left: 103.h, bottom: 4.v))
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
  Widget _buildName(BuildContext context) {
    return Selector<ProfileEditScreenOneProvider, TextEditingController?>(
        selector: (context, provider) => provider.nameController,
        builder: (context, nameController, child) {
          return CustomTextFormField(
              controller: nameController,
              hintText: "lbl_jessica_smith".tr,
              hintStyle: theme.textTheme.bodyLarge!,
              prefix: Container(
                  margin: EdgeInsets.all(12.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgIcon29,
                      height: 24.adaptSize,
                      width: 24.adaptSize)),
              prefixConstraints: BoxConstraints(maxHeight: 48.v));
        });
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Selector<ProfileEditScreenOneProvider, TextEditingController?>(
        selector: (context, provider) => provider.emailController,
        builder: (context, emailController, child) {
          return CustomTextFormField(
              controller: emailController,
              hintText: "msg_jessicasmith_mail_com".tr,
              hintStyle: theme.textTheme.bodyLarge!,
              textInputType: TextInputType.emailAddress,
              prefix: Container(
                  margin: EdgeInsets.fromLTRB(12.h, 12.v, 11.h, 12.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgIcon26,
                      height: 24.adaptSize,
                      width: 24.adaptSize)),
              prefixConstraints: BoxConstraints(maxHeight: 48.v),
              validator: (value) {
                if (value == null || (!isValidEmail(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_email".tr;
                }
                return null;
              });
        });
  }

  /// Section Widget
  Widget _buildMobileNumber(BuildContext context) {
    return Selector<ProfileEditScreenOneProvider, TextEditingController?>(
        selector: (context, provider) => provider.mobileNumberController,
        builder: (context, mobileNumberController, child) {
          return CustomTextFormField(
              controller: mobileNumberController,
              hintText: "lbl_235_654_8899".tr,
              hintStyle: theme.textTheme.bodyLarge!,
              textInputAction: TextInputAction.done,
              prefix: Padding(
                  padding: EdgeInsets.fromLTRB(12.h, 12.v, 30.h, 12.v),
                  child: Row(mainAxisSize: MainAxisSize.min, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imageNotFound,
                        height: 20.v,
                        width: 28.h,
                        radius: BorderRadius.circular(2.h)),
                    CustomImageView(
                        imagePath: ImageConstant.imageNotFound,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.fromLTRB(30.h, 12.v, 12.h, 12.v))
                  ])),
              prefixConstraints: BoxConstraints(maxHeight: 48.v));
        });
  }

  /// Section Widget
  Widget _buildSaveChanges(BuildContext context) {
    return CustomElevatedButton(text: "lbl_save_changes".tr);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
