import '../home_screen_page/widgets/bookmarklist_item_widget.dart';
import '../home_screen_page/widgets/businesslist_item_widget.dart';
import '../home_screen_page/widgets/vector_item_widget.dart';
import 'models/bookmarklist_item_model.dart';
import 'models/businesslist_item_model.dart';
import 'models/vector_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';
import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';
import 'package:rocketfly/widgets/custom_icon_button.dart';
import 'package:rocketfly/widgets/custom_search_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'provider/home_screen_provider.dart';

// ignore_for_file: must_be_immutable
class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({Key? key})
      : super(
          key: key,
        );

  @override
  HomeScreenPageState createState() => HomeScreenPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeScreenProvider(),
      child: HomeScreenPage(),
    );
  }
}

class HomeScreenPageState extends State<HomeScreenPage> {
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
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 22.v),
            child: Container(
              height: 1140.v,
              width: 359.h,
              margin: EdgeInsets.only(
                left: 16.h,
                bottom: 52.v,
              ),
              child: SafeArea(
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_hey_jesica".tr,
                            style: CustomTextStyles.headlineSmallOnErrorSemiBold,
                          ),
                          SizedBox(height: 9.v),
                          Text(
                            "msg_find_a_course_you".tr,
                            style: CustomTextStyles.titleMediumGray700_2,
                          ),
                          SizedBox(height: 17.v),
                          Padding(
                            padding: EdgeInsets.only(right: 16.h),
                            child: Selector<HomeScreenProvider,
                                TextEditingController?>(
                              selector: (
                                context,
                                provider,
                              ) =>
                                  provider.searchController,
                              builder: (context, searchController, child) {
                                return CustomSearchView(
                                  controller: searchController,
                                  hintText: "lbl_search_here".tr,
                                  borderDecoration:
                                      SearchViewStyleHelper.fillGray,
                                  fillColor: appTheme.gray700,
                                );
                              },
                            ),
                          ),
                          SizedBox(height: 23.v),
                          Padding(
                            padding: EdgeInsets.only(right: 16.h),
                            child: _buildTrendingCourses(
                              context,
                              trendingCoursesText: "lbl_categories".tr,
                              seeAllText: "lbl_see_all".tr,
                            ),
                          ),
                          _buildBusinessList(context),
                          SizedBox(height: 12.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgMaskGroup3,
                            height: 100.v,
                            width: 140.h,
                            alignment: Alignment.centerRight,
                          ),
                          SizedBox(height: 29.v),
                          _buildBannerSlider(context),
                          SizedBox(height: 23.v),
                          Padding(
                            padding: EdgeInsets.only(right: 16.h),
                            child: _buildTrendingCourses(
                              context,
                              trendingCoursesText: "msg_trending_courses".tr,
                              seeAllText: "lbl_see_all".tr,
                            ),
                          ),
                          SizedBox(height: 12.v),
                          _buildDurationRow(context),
                          SizedBox(height: 13.v),
                          _buildLearningBlenderRow(context),
                          SizedBox(height: 5.v),
                          _buildDurationRow1(context),
                          SizedBox(height: 27.v),
                          Padding(
                            padding: EdgeInsets.only(right: 16.h),
                            child: _buildTrendingCourses(
                              context,
                              trendingCoursesText: "lbl_new_release".tr,
                              seeAllText: "lbl_see_all".tr,
                            ),
                          ),
                          SizedBox(height: 15.v),
                          _buildBookmarkList(context),
                          _buildMasterYourMindsetRow(context),
                          SizedBox(height: 3.v),
                          _buildDurationRow2(context),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: EdgeInsets.only(top: 303.v),
                        child: Text(
                          "lbl_ui_ux_design".tr,
                          style: CustomTextStyles.titleMediumOnError,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Row(
              children: [
                AppbarTitleImage(
                  imagePath: ImageConstant.imgButtonSetting,
                  margin: EdgeInsets.only(bottom: 1.v),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 108.h,
                    top: 2.v,
                    bottom: 3.v,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_rocket".tr,
                          style: CustomTextStyles.titleLargeDeeppurpleA400,
                        ),
                        TextSpan(
                          text: "lbl_fly".tr,
                          style:
                              CustomTextStyles.titleLargeOnSecondaryContainer,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                AppbarTitleImage(
                  imagePath: ImageConstant.imgButtonNotification,
                  margin: EdgeInsets.only(
                    left: 106.h,
                    top: 1.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 9.v),
          Opacity(
            opacity: 0.08,
            child: SizedBox(
              width: double.maxFinite,
              child: Divider(
                color: theme.colorScheme.onError,
              ),
            ),
          ),
        ],
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildBusinessList(BuildContext context) {
    return SizedBox(
      height: 152.v,
      child: Consumer<HomeScreenProvider>(
        builder: (context, provider, child) {
          return ListView.separated(
            padding: EdgeInsets.only(right: 61.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 12.h,
              );
            },
            itemCount: provider.homeScreenModelObj.businesslistItemList.length,
            itemBuilder: (context, index) {
              BusinesslistItemModel model =
                  provider.homeScreenModelObj.businesslistItemList[index];
              return BusinesslistItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildBannerSlider(BuildContext context) {
    return SizedBox(
      height: 174.v,
      width: 343.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Consumer<HomeScreenProvider>(
            builder: (context, provider, child) {
              return CarouselSlider.builder(
                options: CarouselOptions(
                  height: 174.v,
                  initialPage: 0,
                  autoPlay: true,
                  viewportFraction: 1.0,
                  enableInfiniteScroll: false,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (
                    index,
                    reason,
                  ) {
                    provider.sliderIndex = index;
                  },
                ),
                itemCount: provider.homeScreenModelObj.vectorItemList.length,
                itemBuilder: (context, index, realIndex) {
                  VectorItemModel model =
                      provider.homeScreenModelObj.vectorItemList[index];
                  return VectorItemWidget(
                    model,
                  );
                },
              );
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Consumer<HomeScreenProvider>(
              builder: (context, provider, child) {
                return Container(
                  height: 8.v,
                  margin: EdgeInsets.only(bottom: 24.v),
                  child: AnimatedSmoothIndicator(
                    activeIndex: provider.sliderIndex,
                    count: provider.homeScreenModelObj.vectorItemList.length,
                    axisDirection: Axis.horizontal,
                    effect: ScrollingDotsEffect(
                      spacing: 4,
                      activeDotColor: theme.colorScheme.primary,
                      dotHeight: 8.v,
                      dotWidth: 8.h,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDurationRow(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: IntrinsicWidth(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 240.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 199.v),
                    child: Text(
                      "lbl_12_15_years".tr,
                      style: CustomTextStyles.titleSmallOnError_1,
                    ),
                  ),
                  Spacer(
                    flex: 61,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 173.v,
                      bottom: 23.v,
                    ),
                    child: Text(
                      "msg_learning_blender".tr,
                      style: CustomTextStyles.titleMediumOnError,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgMaskGroup160x240,
                    height: 160.v,
                    width: 240.h,
                    margin: EdgeInsets.only(bottom: 57.v),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 122.v,
                      bottom: 65.v,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.h,
                      vertical: 5.v,
                    ),
                    decoration:
                        AppDecoration.gradientDeepPurpleAToDeepPurpleA.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder4,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 3.v),
                        Text(
                          "lbl_3d_design".tr,
                          style: CustomTextStyles.labelLargePrimary_1,
                        ),
                      ],
                    ),
                  ),
                  Spacer(
                    flex: 38,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgIconYellow900,
                    height: 18.adaptSize,
                    width: 18.adaptSize,
                    margin: EdgeInsets.only(top: 199.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 8.v,
                      bottom: 177.v,
                    ),
                    child: CustomIconButton(
                      height: 32.adaptSize,
                      width: 32.adaptSize,
                      padding: EdgeInsets.all(6.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgBookmark,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 4.h,
                      top: 199.v,
                    ),
                    child: Text(
                      "lbl_5_0".tr,
                      style: CustomTextStyles.titleSmallGray700_2,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 160.v,
              width: 240.h,
              margin: EdgeInsets.only(left: 16.h),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      margin: EdgeInsets.only(
                        left: 9.h,
                        bottom: 8.v,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.h,
                        vertical: 5.v,
                      ),
                      decoration: AppDecoration.gradientDeepPurpleAToDeepPurpleA
                          .copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder4,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 3.v),
                          Text(
                            "lbl_development".tr,
                            style: CustomTextStyles.labelLargePrimary_1,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 8.v,
                      right: 8.h,
                    ),
                    child: CustomIconButton(
                      height: 32.adaptSize,
                      width: 32.adaptSize,
                      padding: EdgeInsets.all(6.h),
                      alignment: Alignment.topRight,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgBookmarkOnerror,
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgMaskGroup4,
                    height: 160.v,
                    width: 240.h,
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLearningBlenderRow(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: IntrinsicWidth(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "msg_learning_blender".tr,
              style: CustomTextStyles.titleMediumOnError,
            ),
            Padding(
              padding: EdgeInsets.only(left: 25.h),
              child: Text(
                "msg_learning_python".tr,
                style: CustomTextStyles.titleMediumOnError,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDurationRow1(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: IntrinsicWidth(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "lbl_12_15_years".tr,
              style: CustomTextStyles.titleSmallOnError_1,
            ),
            Spacer(
              flex: 50,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgIconYellow900,
              height: 18.adaptSize,
              width: 18.adaptSize,
            ),
            Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: Text(
                "lbl_5_0".tr,
                style: CustomTextStyles.titleSmallGray700_2,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Text(
                "lbl_16_22_years".tr,
                style: CustomTextStyles.titleSmallOnError_1,
              ),
            ),
            Spacer(
              flex: 50,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgIconYellow900,
              height: 18.adaptSize,
              width: 18.adaptSize,
            ),
            Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: Text(
                "lbl_5_0".tr,
                style: CustomTextStyles.titleSmallGray700_2,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBookmarkList(BuildContext context) {
    return SizedBox(
      height: 230.v,
      child: Consumer<HomeScreenProvider>(
        builder: (context, provider, child) {
          return ListView.separated(
            padding: EdgeInsets.only(right: 61.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 12.h,
              );
            },
            itemCount: provider.homeScreenModelObj.bookmarklistItemList.length,
            itemBuilder: (context, index) {
              BookmarklistItemModel model =
                  provider.homeScreenModelObj.bookmarklistItemList[index];
              return BookmarklistItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildMasterYourMindsetRow(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: IntrinsicWidth(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 132.h,
              child: Text(
                "msg_master_your_mindset".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.labelLargeOnErrorSemiBold.copyWith(
                  height: 1.50,
                ),
              ),
            ),
            Container(
              width: 114.h,
              margin: EdgeInsets.only(left: 23.h),
              child: Text(
                "msg_introduction_to".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.labelLargeOnErrorSemiBold.copyWith(
                  height: 1.50,
                ),
              ),
            ),
            Spacer(),
            SizedBox(
              width: 140.h,
              child: Text(
                "msg_the_complete_2023".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.labelLargeOnErrorSemiBold.copyWith(
                  height: 1.50,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDurationRow2(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: IntrinsicWidth(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "lbl_7_11_years".tr,
              style: CustomTextStyles.labelLargeOnError,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgIconGray700,
              height: 16.adaptSize,
              width: 16.adaptSize,
              margin: EdgeInsets.only(left: 22.h),
            ),
            Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: Text(
                "lbl_3h_20m".tr,
                style: CustomTextStyles.labelLargeGray700_1,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Text(
                "lbl_12_15_years".tr,
                style: CustomTextStyles.labelLargeOnError,
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgIconGray700,
              height: 16.adaptSize,
              width: 16.adaptSize,
              margin: EdgeInsets.only(left: 15.h),
            ),
            Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: Text(
                "lbl_1h_30m".tr,
                style: CustomTextStyles.labelLargeGray700_1,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Text(
                "lbl_16_22_years".tr,
                style: CustomTextStyles.labelLargeOnError,
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgIconGray700,
              height: 16.adaptSize,
              width: 16.adaptSize,
              margin: EdgeInsets.only(left: 21.h),
            ),
            Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: Text(
                "lbl_2h_40m".tr,
                textAlign: TextAlign.right,
                style: CustomTextStyles.labelLargeGray700_1,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildTrendingCourses(
    BuildContext context, {
    required String trendingCoursesText,
    required String seeAllText,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          trendingCoursesText,
          style: CustomTextStyles.headlineSmallOnError_1.copyWith(
            color: theme.colorScheme.onError.withOpacity(1),
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(
            top: 11.v,
            bottom: 5.v,
          ),
          child: Text(
            seeAllText,
            style: CustomTextStyles.titleMediumGray700.copyWith(
              color: appTheme.gray700,
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(
            top: 8.v,
            bottom: 3.v,
          ),
        ),
      ],
    );
  }
}
