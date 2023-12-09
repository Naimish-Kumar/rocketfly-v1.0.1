import '../home_screen_one_tab_container_screen/widgets/categories_item_widget.dart';
import '../home_screen_one_tab_container_screen/widgets/courses_item_widget.dart';
import '../home_screen_one_tab_container_screen/widgets/mentors_item_widget.dart';
import '../home_screen_one_tab_container_screen/widgets/vector1_item_widget.dart';
import 'models/categories_item_model.dart';
import 'models/courses_item_model.dart';
import 'models/mentors_item_model.dart';
import 'models/vector1_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/presentation/home_screen_one_page/home_screen_one_page.dart';
import 'package:rocketfly/widgets/app_bar/appbar_title.dart';
import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';
import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';
import 'package:rocketfly/widgets/custom_bottom_bar.dart';
import 'package:rocketfly/widgets/custom_elevated_button.dart';
import 'package:rocketfly/widgets/custom_icon_button.dart';
import 'package:rocketfly/widgets/custom_search_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'provider/home_screen_one_tab_container_provider.dart';

class HomeScreenOneTabContainerScreen extends StatefulWidget {
  const HomeScreenOneTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  HomeScreenOneTabContainerScreenState createState() =>
      HomeScreenOneTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeScreenOneTabContainerProvider(),
      child: HomeScreenOneTabContainerScreen(),
    );
  }
}

class HomeScreenOneTabContainerScreenState
    extends State<HomeScreenOneTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          height: 2145.v,
          width: double.maxFinite,
          child: SafeArea(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                _buildHeyJesica(context),
                _buildAllCourses(context),
                _buildNewRelease1(context),
                _buildTopMentors(context),
                _buildCategories(context),
                _buildHomeScreenOne(context),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      
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
                  imagePath: ImageConstant.imgButtonSettingPrimary,
                  margin: EdgeInsets.only(bottom: 1.v),
                ),
                AppbarTitle(
                  text: "lbl_guruji".tr,
                  margin: EdgeInsets.only(
                    left: 121.h,
                    top: 2.v,
                    bottom: 3.v,
                  ),
                ),
                AppbarTitleImage(
                  imagePath: ImageConstant.imgButtonNotificationPrimary,
                  margin: EdgeInsets.only(
                    left: 120.h,
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
              child: Divider(),
            ),
          ),
        ],
      ),
      styleType: Style.bgFill_1,
    );
  }

  /// Section Widget
  Widget _buildHeyJesica(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 16.h,
          top: 22.v,
          right: 16.h,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "lbl_hey_jesica".tr,
              style: CustomTextStyles.headlineSmallSemiBold,
            ),
            SizedBox(height: 9.v),
            Text(
              "msg_find_a_course_you".tr,
              style: theme.textTheme.titleMedium,
            ),
            SizedBox(height: 17.v),
            Selector<HomeScreenOneTabContainerProvider, TextEditingController?>(
              selector: (
                context,
                provider,
              ) =>
                  provider.searchController,
              builder: (context, searchController, child) {
                return CustomSearchView(
                  controller: searchController,
                  hintText: "lbl_search_here".tr,
                );
              },
            ),
            SizedBox(height: 253.v),
            SizedBox(
              height: 174.v,
              width: 343.h,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Consumer<HomeScreenOneTabContainerProvider>(
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
                        itemCount: provider.homeScreenOneTabContainerModelObj
                            .vector1ItemList.length,
                        itemBuilder: (context, index, realIndex) {
                          Vector1ItemModel model = provider
                              .homeScreenOneTabContainerModelObj
                              .vector1ItemList[index];
                          return Vector1ItemWidget(
                            model,
                          );
                        },
                      );
                    },
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Consumer<HomeScreenOneTabContainerProvider>(
                      builder: (context, provider, child) {
                        return Container(
                          height: 8.v,
                          margin: EdgeInsets.only(bottom: 24.v),
                          child: AnimatedSmoothIndicator(
                            activeIndex: provider.sliderIndex,
                            count: provider.homeScreenOneTabContainerModelObj
                                .vector1ItemList.length,
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
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAllCourses(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Text(
                "lbl_all_courses".tr,
                style: theme.textTheme.headlineSmall,
              ),
            ),
            SizedBox(height: 15.v),
            Container(
              height: 32.v,
              width: 364.h,
              child: TabBar(
                controller: tabviewController,
                isScrollable: true,
                labelColor: theme.colorScheme.onPrimaryContainer,
                labelStyle: TextStyle(
                  fontSize: 12.fSize,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w600,
                ),
                unselectedLabelColor: theme.colorScheme.primary,
                unselectedLabelStyle: TextStyle(
                  fontSize: 12.fSize,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w600,
                ),
                indicator: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    16.h,
                  ),
                ),
                tabs: [
                  Tab(
                    child: Text(
                      "lbl_all".tr,
                    ),
                  ),
                  Tab(
                    child: Text(
                      "lbl_3d_design2".tr,
                    ),
                  ),
                  Tab(
                    child: Text(
                      "lbl_business2".tr,
                    ),
                  ),
                  Tab(
                    child: Text(
                      "lbl_marketing2".tr,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 707.v,
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    HomeScreenOnePage.builder(context),
                    HomeScreenOnePage.builder(context),
                    HomeScreenOnePage.builder(context),
                    HomeScreenOnePage.builder(context),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNewRelease1(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 16.h,
          bottom: 811.v,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 16.h),
              child: _buildTrendingCourses(
                context,
                trendingCoursesText: "lbl_new_release".tr,
                seeAllText: "lbl_see_all".tr,
              ),
            ),
            SizedBox(height: 15.v),
            SizedBox(
              height: 230.v,
              child: Consumer<HomeScreenOneTabContainerProvider>(
                builder: (context, provider, child) {
                  return ListView.separated(
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (
                      context,
                      index,
                    ) {
                      return SizedBox(
                        width: 16.h,
                      );
                    },
                    itemCount: provider.homeScreenOneTabContainerModelObj
                        .coursesItemList.length,
                    itemBuilder: (context, index) {
                      CoursesItemModel model = provider
                          .homeScreenOneTabContainerModelObj
                          .coursesItemList[index];
                      return CoursesItemWidget(
                        model,
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTopMentors(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: EdgeInsets.only(top: 880.v),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 25.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "msg_top_mentors".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 122.h,
                      top: 11.v,
                      bottom: 4.v,
                    ),
                    child: Text(
                      "lbl_see_all".tr,
                      style: CustomTextStyles.titleMediumSemiBold,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowDown,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(
                      top: 8.v,
                      bottom: 3.v,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.v),
            SizedBox(
              height: 103.v,
              child: Consumer<HomeScreenOneTabContainerProvider>(
                builder: (context, provider, child) {
                  return ListView.separated(
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (
                      context,
                      index,
                    ) {
                      return SizedBox(
                        width: 16.h,
                      );
                    },
                    itemCount: provider.homeScreenOneTabContainerModelObj
                        .mentorsItemList.length,
                    itemBuilder: (context, index) {
                      MentorsItemModel model = provider
                          .homeScreenOneTabContainerModelObj
                          .mentorsItemList[index];
                      return MentorsItemWidget(
                        model,
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCategories(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 16.h,
          top: 591.v,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 16.h),
              child: _buildTrendingCourses(
                context,
                trendingCoursesText: "msg_trending_courses".tr,
                seeAllText: "lbl_see_all".tr,
              ),
            ),
            SizedBox(height: 12.v),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: IntrinsicWidth(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 160.v,
                          width: 240.h,
                          child: Stack(
                            alignment: Alignment.topRight,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: 160.v,
                                  width: 240.h,
                                  padding: EdgeInsets.symmetric(vertical: 50.v),
                                  decoration:
                                      AppDecoration.fillBlueGray.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder8,
                                  ),
                                  child: Opacity(
                                    opacity: 0.3,
                                    child: CustomImageView(
                                      imagePath: ImageConstant
                                          .imgPlaceHolderErrorcontainer,
                                      height: 60.v,
                                      width: 81.h,
                                      alignment: Alignment.center,
                                    ),
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
                                    imagePath: ImageConstant.imgBookmark,
                                  ),
                                ),
                              ),
                              CustomElevatedButton(
                                height: 30.v,
                                width: 72.h,
                                text: "lbl_3d_design".tr,
                                margin: EdgeInsets.only(
                                  left: 8.h,
                                  bottom: 8.v,
                                ),
                                buttonStyle: CustomButtonStyles.none,
                                decoration: CustomButtonStyles
                                    .gradientOnErrorToOnErrorDecoration,
                                buttonTextStyle:
                                    CustomTextStyles.labelLargePrimary_1,
                                alignment: Alignment.bottomLeft,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 13.v),
                        SizedBox(
                          height: 43.v,
                          width: 240.h,
                          child: Stack(
                            alignment: Alignment.centerLeft,
                            children: [
                              _buildReview(
                                context,
                                userName: "lbl_5_0".tr,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "msg_learning_blender".tr,
                                      style: CustomTextStyles
                                          .titleMediumPrimarySemiBold_1,
                                    ),
                                    SizedBox(height: 6.v),
                                    Row(
                                      children: [
                                        Text(
                                          "lbl_180_00".tr,
                                          style: theme.textTheme.titleSmall,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 8.h),
                                          child: Text(
                                            "lbl_210_00".tr,
                                            style: theme.textTheme.labelLarge!
                                                .copyWith(
                                              decoration:
                                                  TextDecoration.lineThrough,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 160.v,
                            width: 240.h,
                            child: Stack(
                              alignment: Alignment.topRight,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    height: 160.v,
                                    width: 240.h,
                                    padding:
                                        EdgeInsets.symmetric(vertical: 50.v),
                                    decoration:
                                        AppDecoration.fillBlueGray.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder8,
                                    ),
                                    child: Opacity(
                                      opacity: 0.3,
                                      child: CustomImageView(
                                        imagePath: ImageConstant
                                            .imgPlaceHolderErrorcontainer,
                                        height: 60.v,
                                        width: 81.h,
                                        alignment: Alignment.center,
                                      ),
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
                                      imagePath: ImageConstant
                                          .imgBookmarkOnprimarycontainer,
                                    ),
                                  ),
                                ),
                                CustomElevatedButton(
                                  height: 30.v,
                                  width: 88.h,
                                  text: "lbl_development".tr,
                                  margin: EdgeInsets.only(
                                    left: 8.h,
                                    bottom: 8.v,
                                  ),
                                  buttonStyle: CustomButtonStyles.none,
                                  decoration: CustomButtonStyles
                                      .gradientOnErrorToOnErrorDecoration,
                                  buttonTextStyle:
                                      CustomTextStyles.labelLargePrimary_1,
                                  alignment: Alignment.bottomLeft,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 13.v),
                          SizedBox(
                            height: 43.v,
                            width: 240.h,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                _buildReview(
                                  context,
                                  userName: "lbl_5_0".tr,
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 3.h),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "msg_learning_python".tr,
                                          style: CustomTextStyles
                                              .titleMediumPrimarySemiBold_1,
                                        ),
                                        SizedBox(height: 8.v),
                                        Text(
                                          "lbl_150_00".tr,
                                          style: theme.textTheme.titleSmall,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHomeScreenOne(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 16.h,
          top: 164.v,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 16.h),
              child: _buildTrendingCourses(
                context,
                trendingCoursesText: "lbl_categories".tr,
                seeAllText: "lbl_see_all".tr,
              ),
            ),
            SizedBox(height: 12.v),
            SizedBox(
              height: 150.v,
              child: Consumer<HomeScreenOneTabContainerProvider>(
                builder: (context, provider, child) {
                  return ListView.separated(
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (
                      context,
                      index,
                    ) {
                      return SizedBox(
                        width: 16.h,
                      );
                    },
                    itemCount: provider.homeScreenOneTabContainerModelObj
                        .categoriesItemList.length,
                    itemBuilder: (context, index) {
                      CategoriesItemModel model = provider
                          .homeScreenOneTabContainerModelObj
                          .categoriesItemList[index];
                      return CategoriesItemWidget(
                        model,
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
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
          style: theme.textTheme.headlineSmall!.copyWith(
            color: theme.colorScheme.primary,
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(
            top: 11.v,
            bottom: 4.v,
          ),
          child: Text(
            seeAllText,
            style: CustomTextStyles.titleMediumSemiBold.copyWith(
              color: theme.colorScheme.errorContainer,
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowDown,
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

  /// Common widget
  Widget _buildReview(
    BuildContext context, {
    required String userName,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgIconYellow900,
          height: 18.adaptSize,
          width: 18.adaptSize,
        ),
        Padding(
          padding: EdgeInsets.only(left: 4.h),
          child: Text(
            userName,
            style: CustomTextStyles.titleSmallErrorContainer_1.copyWith(
              color: theme.colorScheme.errorContainer,
            ),
          ),
        ),
      ],
    );
  }
}
