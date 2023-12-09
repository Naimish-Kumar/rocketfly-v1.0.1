import '../filter_screen/widgets/categoriessectionlist_item_widget.dart';
import 'models/categoriessectionlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';
import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';
import 'package:rocketfly/widgets/custom_elevated_button.dart';
import 'provider/filter_provider.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  FilterScreenState createState() => FilterScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => FilterProvider(), child: FilterScreen());
  }
}

class FilterScreenState extends State<FilterScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
            backgroundColor: theme.colorScheme.primary,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: SafeArea(
                  child: Column(children: [
                    SizedBox(height: 23.v),
                    Expanded(
                        child: SingleChildScrollView(
                            child: Padding(
                                padding: EdgeInsets.only(
                                    left: 16.h, right: 122.h, bottom: 5.v),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      _buildCategoriesSectionList(context),
                                      SizedBox(height: 10.v),
                                      Padding(
                                          padding: EdgeInsets.only(right: 56.h),
                                          child: Row(children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgIconPrimary24x24,
                                                height: 22.v,
                                                width: 24.h),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 12.h, top: 2.v),
                                                child: Text(
                                                    "msg_intermediate_2_856".tr,
                                                    style: CustomTextStyles
                                                        .titleMediumGray700_2))
                                          ])),
                                      SizedBox(height: 11.v),
                                      Row(children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgIconPrimary24x24,
                                            height: 22.v,
                                            width: 24.h),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 12.h, top: 3.v),
                                            child: Text("lbl_expert_2_789".tr,
                                                style: CustomTextStyles
                                                    .titleMediumGray700_2))
                                      ])
                                    ]))))
                  ]),
                )),
            bottomNavigationBar: _buildNinetySixRow(context));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: Column(children: [
          Padding(
              padding: EdgeInsets.only(left: 16.h, right: 165.h),
              child: Row(children: [
                AppbarTitleImage(
                    imagePath: ImageConstant.imgArrowLeft,
                    onTap: () {
                      onTapArrowLeft(context);
                    }),
                AppbarSubtitleTwo(
                    text: "lbl_filter".tr,
                    margin: EdgeInsets.only(left: 127.h, bottom: 4.v))
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
  Widget _buildCategoriesSectionList(BuildContext context) {
    return Consumer<FilterProvider>(builder: (context, provider, child) {
      return GroupedListView<CategoriessectionlistItemModel, String>(
          shrinkWrap: true,
          stickyHeaderBackgroundColor: Colors.transparent,
          elements: provider.filterModelObj.categoriessectionlistItemList ?? [],
          groupBy: (element) => element.groupBy!,
          sort: false,
          groupSeparatorBuilder: (String value) {
            return Padding(
                padding: EdgeInsets.only(top: 78.v, bottom: 11.v),
                child: Text(value,
                    style: CustomTextStyles.headlineSmallOnError_1.copyWith(
                        color: theme.colorScheme.onError.withOpacity(1))));
          },
          itemBuilder: (context, model) {
            return CategoriessectionlistItemWidget(model);
          },
          separator: SizedBox(height: 12.v));
    });
  }

  /// Section Widget
  Widget _buildNinetySixRow(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v),
        decoration: AppDecoration.outlineOnError,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomElevatedButton(
                  width: 164.h,
                  text: "lbl_reset".tr,
                  buttonStyle: CustomButtonStyles.fillOnError,
                  buttonTextStyle: CustomTextStyles.titleLargeOnError),
              CustomElevatedButton(
                  width: 163.h,
                  text: "lbl_filter".tr,
                  margin: EdgeInsets.only(left: 16.h),
                  buttonStyle: CustomButtonStyles.fillDeepPurpleA,
                  buttonTextStyle: theme.textTheme.titleLarge!)
            ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
