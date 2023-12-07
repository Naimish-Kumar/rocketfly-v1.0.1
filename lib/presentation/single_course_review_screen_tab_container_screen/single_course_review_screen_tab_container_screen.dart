import 'models/single_course_review_screen_tab_container_model.dart';import 'package:flutter/material.dart';import 'package:rocketfly/core/app_export.dart';import 'package:rocketfly/presentation/single_course_review_screen_page/single_course_review_screen_page.dart';import 'package:rocketfly/widgets/app_bar/appbar_leading_image.dart';import 'package:rocketfly/widgets/app_bar/appbar_trailing_image.dart';import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';import 'provider/single_course_review_screen_tab_container_provider.dart';class SingleCourseReviewScreenTabContainerScreen extends StatefulWidget {const SingleCourseReviewScreenTabContainerScreen({Key? key}) : super(key: key);

@override SingleCourseReviewScreenTabContainerScreenState createState() =>  SingleCourseReviewScreenTabContainerScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => SingleCourseReviewScreenTabContainerProvider(), child: SingleCourseReviewScreenTabContainerScreen()); } 
 }

// ignore_for_file: must_be_immutable
class SingleCourseReviewScreenTabContainerScreenState extends State<SingleCourseReviewScreenTabContainerScreen> with  TickerProviderStateMixin {late TabController tabviewController;

late TabController tabsController;

@override void initState() { super.initState(); tabviewController = TabController(length: 2, vsync: this); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.primary, appBar: _buildAppBar(context), body: SizedBox(width: mediaQueryData.size.width, child: SingleChildScrollView(child: SizedBox(height: 2427.v, width: double.maxFinite, child: Stack(alignment: Alignment.topCenter, children: [Align(alignment: Alignment.bottomCenter, child: Column(mainAxisSize: MainAxisSize.min, children: [_buildTabview(context), SizedBox(height: 516.v), _buildTabs(context), SizedBox(height: 1568.v, child: TabBarView(controller: tabviewController, children: [SingleCourseReviewScreenPage.builder(context), SingleCourseReviewScreenPage.builder(context), SingleCourseReviewScreenPage.builder(context), SingleCourseReviewScreenPage.builder(context), SingleCourseReviewScreenPage.builder(context)]))])), CustomImageView(imagePath: ImageConstant.imgMaskGroup255x374, height: 255.v, width: 374.h, alignment: Alignment.topCenter)])))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 44.v, leadingWidth: 40.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftPrimary, margin: EdgeInsets.only(left: 16.h, top: 10.v, bottom: 10.v), onTap: () {onTapArrowLeft(context);}), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgButtonBookmark, margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 10.v))]); } 
/// Section Widget
Widget _buildTabview(BuildContext context) { return SizedBox(height: 33.v, width: 343.h, child: TabBar(controller: tabviewController, labelPadding: EdgeInsets.zero, labelColor: theme.colorScheme.onError.withOpacity(1), labelStyle: TextStyle(fontSize: 14.fSize, fontFamily: 'Lato', fontWeight: FontWeight.w500), unselectedLabelColor: theme.colorScheme.onSecondaryContainer, unselectedLabelStyle: TextStyle(fontSize: 24.fSize, fontFamily: 'League Spartan', fontWeight: FontWeight.w400), indicator: BoxDecoration(color: appTheme.gray700, borderRadius: BorderRadius.circular(4.h)), tabs: [Tab(child: Text("lbl_design".tr)), Tab(child: Text("lbl_16_22_years".tr))])); } 
/// Section Widget
Widget _buildTabs(BuildContext context) { return Container(height: 39.v, width: 343.h, child: TabBar(controller: tabsController, labelPadding: EdgeInsets.zero, labelColor: theme.colorScheme.onSecondaryContainer, unselectedLabelColor: appTheme.gray700, tabs: [Tab(child: Text("lbl_description".tr)), Tab(child: Text("lbl_lessons".tr)), Tab(child: Text("lbl_reviews".tr))])); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
