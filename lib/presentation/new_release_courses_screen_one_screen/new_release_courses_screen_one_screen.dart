import '../new_release_courses_screen_one_screen/widgets/business1_item_widget.dart';
import 'models/business1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/app_bar/appbar_subtitle.dart';
import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';
import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';
import 'provider/new_release_courses_screen_one_provider.dart';

class NewReleaseCoursesScreenOneScreen extends StatefulWidget {
  const NewReleaseCoursesScreenOneScreen({Key? key}) : super(key: key);

  @override
  NewReleaseCoursesScreenOneScreenState createState() =>
      NewReleaseCoursesScreenOneScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => NewReleaseCoursesScreenOneProvider(),
        child: NewReleaseCoursesScreenOneScreen());
  }
}

class NewReleaseCoursesScreenOneScreenState
    extends State<NewReleaseCoursesScreenOneScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Padding(
                padding: EdgeInsets.only(left: 16.h, top: 22.v, right: 16.h),
                child: Consumer<NewReleaseCoursesScreenOneProvider>(
                    builder: (context, provider, child) {
                  return GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: 243.v,
                          crossAxisCount: 2,
                          mainAxisSpacing: 16.h,
                          crossAxisSpacing: 16.h),
                      physics: BouncingScrollPhysics(),
                      itemCount: provider.newReleaseCoursesScreenOneModelObj
                          .business1ItemList.length,
                      itemBuilder: (context, index) {
                        Business1ItemModel model = provider
                            .newReleaseCoursesScreenOneModelObj
                            .business1ItemList[index];
                        return Business1ItemWidget(model);
                      });
                }))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: Column(children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: Row(children: [
                AppbarTitleImage(
                    imagePath: ImageConstant.imgArrowLeftPrimary,
                    onTap: () {
                      onTapArrowLeft(context);
                    }),
                AppbarSubtitle(
                    text: "lbl_new_release2".tr,
                    margin: EdgeInsets.only(left: 95.h, bottom: 4.v)),
                AppbarTitleImage(
                    imagePath: ImageConstant.imgButtonFilterPrimary,
                    margin: EdgeInsets.only(left: 93.h))
              ])),
          SizedBox(height: 10.v),
          Opacity(
              opacity: 0.08,
              child: SizedBox(width: double.maxFinite, child: Divider()))
        ]),
        styleType: Style.bgFill_1);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
