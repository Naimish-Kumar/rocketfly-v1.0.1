import '../notification_screen/widgets/barbaramichelalist_item_widget.dart';
import 'models/barbaramichelalist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';
import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';
import 'provider/notification_provider.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  NotificationScreenState createState() => NotificationScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => NotificationProvider(),
        child: NotificationScreen());
  }
}

class NotificationScreenState extends State<NotificationScreen> {
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
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 27.v),
                child: Column(children: [
                  _buildBarbaraMichelaList(context),
                  SizedBox(height: 16.v),
                  _buildPeterParkerCommentsRow(context),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: Column(children: [
          Padding(
              padding: EdgeInsets.only(left: 16.h, right: 137.h),
              child: Row(children: [
                AppbarTitleImage(
                    imagePath: ImageConstant.imgArrowLeft,
                    onTap: () {
                      onTapArrowLeft(context);
                    }),
                AppbarSubtitleTwo(
                    text: "lbl_notification".tr,
                    margin: EdgeInsets.only(left: 99.h, bottom: 4.v))
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
  Widget _buildBarbaraMichelaList(BuildContext context) {
    return Consumer<NotificationProvider>(builder: (context, provider, child) {
      return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(height: 6.v);
          },
          itemCount:
              provider.notificationModelObj.barbaramichelalistItemList.length,
          itemBuilder: (context, index) {
            BarbaramichelalistItemModel model =
                provider.notificationModelObj.barbaramichelalistItemList[index];
            return BarbaramichelalistItemWidget(model);
          });
    });
  }

  /// Section Widget
  Widget _buildPeterParkerCommentsRow(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomImageView(
          imagePath: ImageConstant.imgMaskGroup48x48,
          height: 48.adaptSize,
          width: 48.adaptSize),
      Expanded(
          child: Container(
              width: 279.h,
              margin: EdgeInsets.only(left: 12.h, top: 5.v, bottom: 2.v),
              child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "lbl_peter_parker".tr,
                        style: CustomTextStyles.titleSmallOnError),
                    TextSpan(
                        text: "lbl_comments_on".tr,
                        style: CustomTextStyles.titleSmallOnError_2),
                    TextSpan(
                        text: "lbl_the_courses_of".tr,
                        style: CustomTextStyles.bodyMediumOnError),
                    TextSpan(
                        text: "msg_productivity_analytics".tr,
                        style: CustomTextStyles.titleSmallOnError),
                    TextSpan(
                        text: "lbl".tr,
                        style: CustomTextStyles.bodyMediumOnError),
                    TextSpan(text: " "),
                    TextSpan(
                        text: "lbl_25_nov_22".tr,
                        style: CustomTextStyles.labelLargeGray700)
                  ]),
                  textAlign: TextAlign.left)))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
