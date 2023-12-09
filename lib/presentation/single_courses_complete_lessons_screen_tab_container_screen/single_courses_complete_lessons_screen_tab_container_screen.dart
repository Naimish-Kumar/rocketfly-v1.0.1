import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/presentation/single_courses_complete_certificate_screen_one_page/single_courses_complete_certificate_screen_one_page.dart';
import 'package:rocketfly/presentation/single_courses_complete_certificate_screen_page/single_courses_complete_certificate_screen_page.dart';
import 'package:rocketfly/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';
import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';
import 'provider/single_courses_complete_lessons_screen_tab_container_provider.dart';

class SingleCoursesCompleteLessonsScreenTabContainerScreen
    extends StatefulWidget {
  const SingleCoursesCompleteLessonsScreenTabContainerScreen({Key? key})
      : super(key: key);

  @override
  SingleCoursesCompleteLessonsScreenTabContainerScreenState createState() =>
      SingleCoursesCompleteLessonsScreenTabContainerScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) =>
            SingleCoursesCompleteLessonsScreenTabContainerProvider(),
        child: SingleCoursesCompleteLessonsScreenTabContainerScreen());
  }
}

// ignore_for_file: must_be_immutable
class SingleCoursesCompleteLessonsScreenTabContainerScreenState
    extends State<SingleCoursesCompleteLessonsScreenTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.primary,
      appBar: _buildAppBar(context),
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            SizedBox(height: 22.v),
            _buildResponsiveDesign(context),
            SizedBox(height: 32.v),
            Opacity(
                opacity: 0.08,
                child: Divider(
                    color: theme.colorScheme.onError,
                    indent: 16.h,
                    endIndent: 16.h)),
            SizedBox(height: 8.v),
            _buildTabview(context),
            Expanded(
              child: SizedBox(
                height: 1578.v,
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    SingleCoursesCompleteCertificateScreenPage.builder(context),
                    SingleCoursesCompleteCertificateScreenOnePage.builder(
                        context)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: Column(children: [
          Padding(
            padding: EdgeInsets.only(left: 16.h, right: 142.h),
            child: Row(
              children: [
                AppbarTitleImage(
                    imagePath: ImageConstant.imgArrowLeft,
                    onTap: () {
                      onTapArrowLeft(context);
                    }),
                AppbarSubtitleTwo(
                  text: "lbl_my_course".tr,
                  margin: EdgeInsets.only(left: 104.h, top: 2.v, bottom: 2.v),
                )
              ],
            ),
          ),
          SizedBox(height: 10.v),
          Opacity(
            opacity: 0.08,
            child: Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                width: double.maxFinite,
                child: Divider(color: theme.colorScheme.onError),
              ),
            ),
          )
        ]),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildResponsiveDesign(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
              imagePath: ImageConstant.imgMaskGroup14,
              height: 80.adaptSize,
              width: 80.adaptSize),
          Padding(
            padding: EdgeInsets.only(left: 12.h, top: 4.v, bottom: 4.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 147.h,
                  child: Text(
                    "msg_responsive_design2".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleMediumOnError_1
                        .copyWith(height: 1.25),
                  ),
                ),
                SizedBox(height: 15.v),
                Row(
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgIconGray700,
                        height: 16.adaptSize,
                        width: 16.adaptSize),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text("lbl_1h_30m".tr,
                          style: CustomTextStyles.labelLargeGray700_1),
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24.h),
            child: SizedBox(
              height: 80.adaptSize,
              width: 80.adaptSize,
              child: CircularProgressIndicator(value: 0.5, strokeWidth: 4.h),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 29.v,
      width: 343.h,
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: theme.colorScheme.onSecondaryContainer,
        unselectedLabelColor: appTheme.gray700,
        tabs: [
          Tab(
            child: Text("lbl_lessons".tr),
          ),
          Tab(
            child: Text("lbl_certificate".tr),
          )
        ],
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
