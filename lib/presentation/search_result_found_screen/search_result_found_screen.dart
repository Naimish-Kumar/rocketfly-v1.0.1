import '../search_result_found_screen/widgets/list_item_widget.dart';
import 'models/list_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';
import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';
import 'package:rocketfly/widgets/custom_text_form_field.dart';
import 'provider/search_result_found_provider.dart';

class SearchResultFoundScreen extends StatefulWidget {
  const SearchResultFoundScreen({Key? key}) : super(key: key);

  @override
  SearchResultFoundScreenState createState() => SearchResultFoundScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SearchResultFoundProvider(),
        child: SearchResultFoundScreen());
  }
}

class SearchResultFoundScreenState extends State<SearchResultFoundScreen> {
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
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 1.v),
                child: Column(children: [
                  SizedBox(height: 20.v),
                  _buildSearchBox(context),
                  SizedBox(height: 32.v),
                  _buildGroup240(context),
                  SizedBox(height: 16.v),
                  _buildList(context)
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
    return Selector<SearchResultFoundProvider, TextEditingController?>(
        selector: (context, provider) => provider.searchBoxController,
        builder: (context, searchBoxController, child) {
          return CustomTextFormField(
              controller: searchBoxController,
              hintText: "lbl_3d_desigm".tr,
              prefix: Container(
                  margin: EdgeInsets.fromLTRB(16.h, 12.v, 12.h, 12.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgIconSearch,
                      height: 24.adaptSize,
                      width: 24.adaptSize)),
              prefixConstraints: BoxConstraints(maxHeight: 48.v),
              suffix: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 12.v, 16.h, 12.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgButtonFilter,
                      height: 24.adaptSize,
                      width: 24.adaptSize)),
              suffixConstraints: BoxConstraints(maxHeight: 48.v),
              contentPadding: EdgeInsets.symmetric(vertical: 14.v),
              borderDecoration: TextFormFieldStyleHelper.fillGray,
              fillColor: appTheme.gray700);
        });
  }

  /// Section Widget
  Widget _buildGroup239(BuildContext context) {
    return Selector<SearchResultFoundProvider, TextEditingController?>(
        selector: (context, provider) => provider.group239Controller,
        builder: (context, group239Controller, child) {
          return CustomTextFormField(
              width: 343.h,
              controller: group239Controller,
              hintText: "msg_results_for_3d2".tr,
              textInputAction: TextInputAction.done,
              alignment: Alignment.center,
              borderDecoration: TextFormFieldStyleHelper.underLineOnError,
              filled: false);
        });
  }

  /// Section Widget
  Widget _buildGroup240(BuildContext context) {
    return SizedBox(
        height: 32.v,
        width: 343.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.topRight,
              child: Text("lbl_236_founds".tr,
                  style: CustomTextStyles.titleMediumGray700)),
          _buildGroup239(context)
        ]));
  }

  /// Section Widget
  Widget _buildList(BuildContext context) {
    return Expanded(child: Consumer<SearchResultFoundProvider>(
        builder: (context, provider, child) {
      return ListView.separated(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(height: 11.v);
          },
          itemCount: provider.searchResultFoundModelObj.listItemList.length,
          itemBuilder: (context, index) {
            ListItemModel model =
                provider.searchResultFoundModelObj.listItemList[index];
            return ListItemWidget(model);
          });
    }));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
