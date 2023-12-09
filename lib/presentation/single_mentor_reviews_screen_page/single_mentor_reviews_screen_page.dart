import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/custom_icon_button.dart';
import 'package:rocketfly/widgets/custom_rating_bar.dart';
import 'provider/single_mentor_reviews_screen_provider.dart';

// ignore_for_file: must_be_immutable
class SingleMentorReviewsScreenPage extends StatefulWidget {
  const SingleMentorReviewsScreenPage({Key? key})
      : super(
          key: key,
        );

  @override
  SingleMentorReviewsScreenPageState createState() =>
      SingleMentorReviewsScreenPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SingleMentorReviewsScreenProvider(),
      child: SingleMentorReviewsScreenPage(),
    );
  }
}

class SingleMentorReviewsScreenPageState
    extends State<SingleMentorReviewsScreenPage>
    with AutomaticKeepAliveClientMixin<SingleMentorReviewsScreenPage> {
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
                      SizedBox(
                        height: 94.v,
                        width: 343.h,
                        child: Stack(
                          alignment: Alignment.topRight,
                          children: [
                            CustomIconButton(
                              height: 48.adaptSize,
                              width: 48.adaptSize,
                              padding: EdgeInsets.all(7.h),
                              decoration: IconButtonStyleHelper.fillBlueGrayTL24,
                              alignment: Alignment.topLeft,
                              child: CustomImageView(
                                imagePath:
                                    ImageConstant.imgPlaceHolderErrorcontainer,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgButtonMorePrimary,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              alignment: Alignment.topRight,
                              margin: EdgeInsets.only(top: 12.v),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 59.h),
                                      child: Text(
                                        "lbl_ami_jackson".tr,
                                        style: CustomTextStyles
                                            .titleMediumPrimarySemiBold_1,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 7.v),
                                  Text(
                                    "lbl_20_minutes_ago".tr,
                                    style: CustomTextStyles
                                        .labelMediumErrorContainer_1,
                                  ),
                                  SizedBox(height: 13.v),
                                  SizedBox(
                                    width: 325.h,
                                    child: Text(
                                      "msg_the_course_is_very".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.labelLarge!.copyWith(
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 60.h,
                                top: 31.v,
                              ),
                              child: CustomRatingBar(
                                alignment: Alignment.topLeft,
                                initialRating: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 6.v),
                      _buildHelpful(
                        context,
                        userLabel463: "lbl_369".tr,
                        userLabel56: "lbl_10".tr,
                        shape: ImageConstant.imgShapePrimary,
                        wasThisReview: "msg_was_this_review".tr,
                      ),
                      SizedBox(height: 16.v),
                      SizedBox(
                        height: 94.v,
                        width: 343.h,
                        child: Stack(
                          alignment: Alignment.topRight,
                          children: [
                            CustomIconButton(
                              height: 48.adaptSize,
                              width: 48.adaptSize,
                              padding: EdgeInsets.all(7.h),
                              decoration: IconButtonStyleHelper.fillBlueGrayTL24,
                              alignment: Alignment.topLeft,
                              child: CustomImageView(
                                imagePath:
                                    ImageConstant.imgPlaceHolderErrorcontainer,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgButtonMorePrimary,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              alignment: Alignment.topRight,
                              margin: EdgeInsets.only(top: 12.v),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: EdgeInsets.only(right: 7.h),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 60.h),
                                      child: Text(
                                        "lbl_kevin_smith".tr,
                                        style: CustomTextStyles
                                            .titleMediumPrimarySemiBold_1,
                                      ),
                                    ),
                                    SizedBox(height: 7.v),
                                    Padding(
                                      padding: EdgeInsets.only(left: 128.h),
                                      child: Text(
                                        "lbl_1_week_ago".tr,
                                        style: CustomTextStyles
                                            .labelMediumErrorContainer_1,
                                      ),
                                    ),
                                    SizedBox(height: 13.v),
                                    SizedBox(
                                      width: 336.h,
                                      child: Text(
                                        "msg_throughout_the_course".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style:
                                            theme.textTheme.labelLarge!.copyWith(
                                          height: 1.50,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 60.h,
                                top: 31.v,
                              ),
                              child: CustomRatingBar(
                                alignment: Alignment.topLeft,
                                initialRating: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 6.v),
                      _buildHelpful(
                        context,
                        userLabel463: "lbl_463".tr,
                        userLabel56: "lbl_56".tr,
                        shape: ImageConstant.imgShapePrimary36x343,
                        wasThisReview: "msg_was_this_review".tr,
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
  Widget _buildHelpful(
    BuildContext context, {
    required String userLabel463,
    required String userLabel56,
    required String shape,
    required String wasThisReview,
  }) {
    return SizedBox(
      height: 36.v,
      width: 343.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.fromLTRB(180.h, 9.v, 38.h, 9.v),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgIconGreen400,
                    height: 18.adaptSize,
                    width: 18.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 4.h,
                      top: 2.v,
                    ),
                    child: Text(
                      userLabel463,
                      style: theme.textTheme.labelLarge!.copyWith(
                        color: theme.colorScheme.errorContainer,
                      ),
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgIconRedA700,
                    height: 18.adaptSize,
                    width: 18.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 4.h,
                      top: 2.v,
                    ),
                    child: Text(
                      userLabel56,
                      style: theme.textTheme.labelLarge!.copyWith(
                        color: theme.colorScheme.errorContainer,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 36.v,
              width: 343.h,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  CustomImageView(
                    imagePath: shape,
                    height: 36.v,
                    width: 343.h,
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 8.v),
                      child: Text(
                        wasThisReview,
                        style: CustomTextStyles.labelLargePrimary_1.copyWith(
                          color: theme.colorScheme.primary,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
