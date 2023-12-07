import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/presentation/my_courses_ongoing_screen_one_page/my_courses_ongoing_screen_one_page.dart';
import 'package:rocketfly/presentation/my_courses_ongoing_screen_page/my_courses_ongoing_screen_page.dart';
import 'package:rocketfly/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';
import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';
import 'package:rocketfly/widgets/custom_bottom_bar.dart';
import 'provider/my_courses_completed_screen_tab_container_provider.dart';

class MyCoursesCompletedScreenTabContainerScreen extends StatefulWidget {
  const MyCoursesCompletedScreenTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  MyCoursesCompletedScreenTabContainerScreenState createState() =>
      MyCoursesCompletedScreenTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyCoursesCompletedScreenTabContainerProvider(),
      child: MyCoursesCompletedScreenTabContainerScreen(),
    );
  }
}

class MyCoursesCompletedScreenTabContainerScreenState
    extends State<MyCoursesCompletedScreenTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Column(
                children: [
                  SizedBox(height: 24.v),
                  _buildTabview(context),
                  SizedBox(
                    height: 543.v,
                    child: TabBarView(
                      controller: tabviewController,
                      children: [
                        MyCoursesOngoingScreenPage.builder(context),
                        MyCoursesOngoingScreenOnePage.builder(context),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomAppBar(context),
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
                AppbarSubtitleTwo(
                  text: "lbl_my_courses".tr,
                  margin: EdgeInsets.only(
                    left: 100.h,
                    top: 2.v,
                    bottom: 3.v,
                  ),
                ),
                AppbarTitleImage(
                  imagePath: ImageConstant.imgButtonNotification,
                  margin: EdgeInsets.only(
                    left: 98.h,
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
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 27.v,
      width: 343.h,
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: theme.colorScheme.onSecondaryContainer,
        unselectedLabelColor: appTheme.gray700,
        tabs: [
          Tab(
            child: Text(
              "lbl_ongoing".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_completed".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomAppBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}
