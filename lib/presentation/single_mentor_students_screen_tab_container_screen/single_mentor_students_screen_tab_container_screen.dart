import '../single_mentor_students_screen_tab_container_screen/widgets/two_item_widget.dart';
import 'models/two_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/presentation/single_mentor_courses_screen_page/single_mentor_courses_screen_page.dart';
import 'package:rocketfly/presentation/single_mentor_reviews_screen_page/single_mentor_reviews_screen_page.dart';
import 'package:rocketfly/presentation/single_mentor_students_screen_page/single_mentor_students_screen_page.dart';
import 'package:rocketfly/widgets/app_bar/appbar_subtitle.dart';
import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';
import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';
import 'package:rocketfly/widgets/custom_icon_button.dart';
import 'provider/single_mentor_students_screen_tab_container_provider.dart';

class SingleMentorStudentsScreenTabContainerScreen extends StatefulWidget {
  const SingleMentorStudentsScreenTabContainerScreen({Key? key})
      : super(key: key);

  @override
  SingleMentorStudentsScreenTabContainerScreenState createState() =>
      SingleMentorStudentsScreenTabContainerScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SingleMentorStudentsScreenTabContainerProvider(),
        child: SingleMentorStudentsScreenTabContainerScreen());
  }
}

// ignore_for_file: must_be_immutable
class SingleMentorStudentsScreenTabContainerScreenState
    extends State<SingleMentorStudentsScreenTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 22.v),
                  _buildPlaceholderRow(context),
                  SizedBox(height: 24.v),
                  _buildStatesColumn(context),
                  SizedBox(height: 25.v),
                  _buildTabview(context),
                  _buildTabBarView(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
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
                    text: "lbl_mentor".tr,
                    margin: EdgeInsets.only(left: 118.h, top: 1.v, bottom: 3.v))
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
  Widget _buildPlaceholderRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              height: 96.adaptSize,
              width: 96.adaptSize,
              padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 24.v),
              decoration: AppDecoration.fillBlueGray
                  .copyWith(borderRadius: BorderRadiusStyle.circleBorder48),
              child: Opacity(
                  opacity: 0.3,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgPlaceHolderErrorcontainer,
                      height: 48.v,
                      width: 65.h,
                      alignment: Alignment.center))),
          Padding(
              padding: EdgeInsets.only(left: 16.h, top: 6.v, bottom: 4.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("lbl_claire_joe".tr,
                        style: CustomTextStyles.titleMediumPrimary),
                    SizedBox(height: 11.v),
                    Text("lbl_356k_followers".tr,
                        style: theme.textTheme.titleSmall),
                    SizedBox(height: 17.v),
                    Text("lbl_development".tr,
                        style: CustomTextStyles.titleSmallErrorContainer_1)
                  ])),
          Spacer(),
          Column(children: [
            CustomIconButton(
                height: 40.adaptSize,
                width: 40.adaptSize,
                padding: EdgeInsets.all(8.h),
                decoration: IconButtonStyleHelper.fillPrimaryTL4,
                child:
                    CustomImageView(imagePath: ImageConstant.imgButtonFollow)),
            SizedBox(height: 16.v),
            CustomIconButton(
                height: 40.adaptSize,
                width: 40.adaptSize,
                padding: EdgeInsets.all(8.h),
                decoration: IconButtonStyleHelper.fillErrorContainerTL4,
                child: CustomImageView(imagePath: ImageConstant.imgChat))
          ])
        ]));
  }

  /// Section Widget
  Widget _buildStatesColumn(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16.h),
        padding: EdgeInsets.symmetric(vertical: 24.v),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: fs.Svg(ImageConstant.imgShapePrimary),
                fit: BoxFit.cover)),
        child: SizedBox(
            height: 131.v,
            child: Consumer<SingleMentorStudentsScreenTabContainerProvider>(
                builder: (context, provider, child) {
              return ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 16.h);
                  },
                  itemCount: provider
                      .singleMentorStudentsScreenTabContainerModelObj
                      .twoItemList
                      .length,
                  itemBuilder: (context, index) {
                    TwoItemModel model = provider
                        .singleMentorStudentsScreenTabContainerModelObj
                        .twoItemList[index];
                    return TwoItemWidget(model);
                  });
            })));
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
        height: 28.v,
        width: 343.h,
        child: TabBar(
            controller: tabviewController,
            labelPadding: EdgeInsets.zero,
            labelColor: appTheme.yellow900,
            unselectedLabelColor: theme.colorScheme.errorContainer,
            tabs: [
              Tab(child: Text("lbl_courses".tr)),
              Tab(child: Text("lbl_students2".tr)),
              Tab(child: Text("lbl_reviews".tr))
            ]));
  }

  /// Section Widget
  Widget _buildTabBarView(BuildContext context) {
    return SizedBox(
        height: 337.v,
        child: TabBarView(controller: tabviewController, children: [
          SingleMentorCoursesScreenPage.builder(context),
          SingleMentorStudentsScreenPage.builder(context),
          SingleMentorReviewsScreenPage.builder(context)
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
