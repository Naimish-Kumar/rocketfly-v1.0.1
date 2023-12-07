import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';
import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';
import 'package:rocketfly/widgets/custom_text_form_field.dart';
import 'provider/search_no_result_found_provider.dart';

class SearchNoResultFoundScreen extends StatefulWidget {
  const SearchNoResultFoundScreen({Key? key}) : super(key: key);

  @override
  SearchNoResultFoundScreenState createState() =>
      SearchNoResultFoundScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SearchNoResultFoundProvider(),
        child: SearchNoResultFoundScreen());
  }
}

class SearchNoResultFoundScreenState extends State<SearchNoResultFoundScreen> {
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
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 22.v),
                child: Column(children: [
                  Selector<SearchNoResultFoundProvider, TextEditingController?>(
                      selector: (context, provider) =>
                          provider.searchBoxController,
                      builder: (context, searchBoxController, child) {
                        return CustomTextFormField(
                            controller: searchBoxController,
                            hintText: "lbl_3d_desigm".tr,
                            prefix: Container(
                                margin:
                                    EdgeInsets.fromLTRB(16.h, 12.v, 12.h, 12.v),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgIconSearch,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize)),
                            prefixConstraints: BoxConstraints(maxHeight: 48.v),
                            suffix: Container(
                                margin:
                                    EdgeInsets.fromLTRB(30.h, 12.v, 16.h, 12.v),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgButtonFilter,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize)),
                            suffixConstraints: BoxConstraints(maxHeight: 48.v),
                            contentPadding:
                                EdgeInsets.symmetric(vertical: 14.v),
                            borderDecoration: TextFormFieldStyleHelper.fillGray,
                            fillColor: appTheme.gray700);
                      }),
                  SizedBox(height: 32.v),
                  _buildSearchBox(context),
                  SizedBox(height: 16.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgMaskGroup5,
                      height: 343.adaptSize,
                      width: 343.adaptSize),
                  SizedBox(height: 24.v),
                  Text("lbl_not_found".tr,
                      style: CustomTextStyles.headlineLargeDeeppurpleA400),
                  SizedBox(height: 24.v),
                  SizedBox(
                      width: 343.h,
                      child: Text("msg_sorry_the_keyword".tr,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.titleMediumGray700_2
                              .copyWith(height: 1.50))),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: Column(children: [
          Padding(
              padding: EdgeInsets.only(left: 16.h, right: 158.h),
              child: Row(children: [
                AppbarTitleImage(
                    imagePath: ImageConstant.imgArrowLeft,
                    onTap: () {
                      onTapArrowLeft(context);
                    }),
                AppbarSubtitleTwo(
                    text: "lbl_search".tr,
                    margin: EdgeInsets.only(left: 119.h, bottom: 4.v))
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
  Widget _buildSearchBox(BuildContext context) {
    return SizedBox(
        height: 32.v,
        width: 343.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.topRight,
              child: Text("lbl_0_found".tr,
                  style: CustomTextStyles.titleMediumGray700)),
          Selector<SearchNoResultFoundProvider, TextEditingController?>(
              selector: (context, provider) => provider.group215Controller,
              builder: (context, group215Controller, child) {
                return CustomTextFormField(
                    width: 343.h,
                    controller: group215Controller,
                    hintText: "msg_results_for_3d".tr,
                    textInputAction: TextInputAction.done,
                    alignment: Alignment.center,
                    borderDecoration: TextFormFieldStyleHelper.underLineOnError,
                    filled: false);
              })
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
