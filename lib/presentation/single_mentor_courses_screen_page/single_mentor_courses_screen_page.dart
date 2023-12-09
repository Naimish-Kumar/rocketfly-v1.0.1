import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/custom_elevated_button.dart';
import 'package:rocketfly/widgets/custom_icon_button.dart';
import 'provider/single_mentor_courses_screen_provider.dart';

// ignore_for_file: must_be_immutable
class SingleMentorCoursesScreenPage extends StatefulWidget {
  const SingleMentorCoursesScreenPage({Key? key})
      : super(
          key: key,
        );

  @override
  SingleMentorCoursesScreenPageState createState() =>
      SingleMentorCoursesScreenPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SingleMentorCoursesScreenProvider(),
      child: SingleMentorCoursesScreenPage(),
    );
  }
}

class SingleMentorCoursesScreenPageState
    extends State<SingleMentorCoursesScreenPage>
    with AutomaticKeepAliveClientMixin<SingleMentorCoursesScreenPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimaryContainer,
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(height: 16.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 128.adaptSize,
                            width: 128.adaptSize,
                            padding: EdgeInsets.symmetric(
                              horizontal: 23.h,
                              vertical: 34.v,
                            ),
                            decoration: AppDecoration.fillBlueGray.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8,
                            ),
                            child: Opacity(
                              opacity: 0.3,
                              child: CustomImageView(
                                imagePath:
                                    ImageConstant.imgPlaceHolderErrorcontainer,
                                height: 60.v,
                                width: 81.h,
                                alignment: Alignment.center,
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: 203.h,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomElevatedButton(
                                      height: 28.v,
                                      width: 76.h,
                                      text: "lbl_development".tr,
                                      buttonStyle:
                                          CustomButtonStyles.fillErrorContainer,
                                      buttonTextStyle:
                                          theme.textTheme.labelMedium!,
                                    ),
                                    CustomIconButton(
                                      height: 28.adaptSize,
                                      width: 28.adaptSize,
                                      padding: EdgeInsets.all(5.h),
                                      decoration: IconButtonStyleHelper
                                          .fillErrorContainer,
                                      child: CustomImageView(
                                        imagePath: ImageConstant.imgBookmark,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 12.v),
                              SizedBox(
                                height: 64.v,
                                width: 203.h,
                                child: Stack(
                                  alignment: Alignment.centerLeft,
                                  children: [
                                    _buildTime(
                                      context,
                                      distance: "lbl_3h_30m".tr,
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: 181.h,
                                            child: Text(
                                              "msg_the_complete_20235".tr,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: theme.textTheme.titleSmall!
                                                  .copyWith(
                                                height: 1.29,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 12.v),
                                          Text(
                                            "lbl_170_00".tr,
                                            style: CustomTextStyles
                                                .labelLargePrimary_1,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 7.v),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgIconYellow900,
                                    height: 16.adaptSize,
                                    width: 16.adaptSize,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 4.h),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "lbl_4".tr,
                                            style: theme.textTheme.labelLarge,
                                          ),
                                          TextSpan(
                                            text: "lbl".tr,
                                            style: theme.textTheme.labelLarge,
                                          ),
                                          TextSpan(
                                            text: "lbl_3".tr,
                                            style: theme.textTheme.labelLarge,
                                          ),
                                          TextSpan(
                                            text: " ",
                                          ),
                                          TextSpan(
                                            text: "lbl_3_7k_ratings".tr,
                                            style: theme.textTheme.labelLarge,
                                          ),
                                          TextSpan(
                                            text: "lbl_104_2k".tr,
                                            style: theme.textTheme.labelLarge,
                                          ),
                                          TextSpan(
                                            text: "lbl_students".tr,
                                            style: theme.textTheme.labelLarge,
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 16.v),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 128.adaptSize,
                            width: 128.adaptSize,
                            padding: EdgeInsets.symmetric(
                              horizontal: 23.h,
                              vertical: 34.v,
                            ),
                            decoration: AppDecoration.fillBlueGray.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8,
                            ),
                            child: Opacity(
                              opacity: 0.3,
                              child: CustomImageView(
                                imagePath:
                                    ImageConstant.imgPlaceHolderErrorcontainer,
                                height: 60.v,
                                width: 81.h,
                                alignment: Alignment.center,
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: 203.h,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomElevatedButton(
                                      height: 28.v,
                                      width: 76.h,
                                      text: "lbl_development".tr,
                                      buttonStyle:
                                          CustomButtonStyles.fillErrorContainer,
                                      buttonTextStyle:
                                          theme.textTheme.labelMedium!,
                                    ),
                                    CustomIconButton(
                                      height: 28.adaptSize,
                                      width: 28.adaptSize,
                                      padding: EdgeInsets.all(5.h),
                                      decoration: IconButtonStyleHelper
                                          .fillErrorContainer,
                                      child: CustomImageView(
                                        imagePath:
                                            ImageConstant.imgButtonBookmark,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 12.v),
                              SizedBox(
                                height: 64.v,
                                width: 203.h,
                                child: Stack(
                                  alignment: Alignment.centerLeft,
                                  children: [
                                    _buildTime(
                                      context,
                                      distance: "lbl_6h_40m".tr,
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: 179.h,
                                            child: Text(
                                              "msg_kids_coding_introduction".tr,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: theme.textTheme.titleSmall!
                                                  .copyWith(
                                                height: 1.29,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 12.v),
                                          Text(
                                            "lbl_210_00".tr,
                                            style: CustomTextStyles
                                                .labelLargePrimary_1,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 7.v),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgIconYellow900,
                                      height: 16.adaptSize,
                                      width: 16.adaptSize,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 4.h),
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "lbl_4".tr,
                                              style: theme.textTheme.labelLarge,
                                            ),
                                            TextSpan(
                                              text: "lbl".tr,
                                              style: theme.textTheme.labelLarge,
                                            ),
                                            TextSpan(
                                              text: "lbl_6".tr,
                                              style: theme.textTheme.labelLarge,
                                            ),
                                            TextSpan(
                                              text: " ",
                                            ),
                                            TextSpan(
                                              text: "lbl_2_1k_ratings".tr,
                                              style: theme.textTheme.labelLarge,
                                            ),
                                            TextSpan(
                                              text: "lbl_86_7k".tr,
                                              style: theme.textTheme.labelLarge,
                                            ),
                                            TextSpan(
                                              text: "lbl_students".tr,
                                              style: theme.textTheme.labelLarge,
                                            ),
                                          ],
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      
    );
  }

  /// Common widget
  Widget _buildTime(
    BuildContext context, {
    required String distance,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgIconErrorcontainer16x16,
          height: 16.adaptSize,
          width: 16.adaptSize,
        ),
        Padding(
          padding: EdgeInsets.only(left: 4.h),
          child: Text(
            distance,
            style: theme.textTheme.labelLarge!.copyWith(
              color: theme.colorScheme.errorContainer,
            ),
          ),
        ),
      ],
    );
  }
}
