import 'models/profile_screen_one_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/app_bar/appbar_subtitle.dart';
import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';
import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';
import 'package:rocketfly/widgets/custom_bottom_bar.dart';
import 'package:rocketfly/widgets/custom_icon_button.dart';
import 'provider/profile_screen_one_provider.dart';

class ProfileScreenOneScreen extends StatefulWidget {
  const ProfileScreenOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ProfileScreenOneScreenState createState() => ProfileScreenOneScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProfileScreenOneProvider(),
      child: ProfileScreenOneScreen(),
    );
  }
}

class ProfileScreenOneScreenState extends State<ProfileScreenOneScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

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
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 22.v,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 105.adaptSize,
                      width: 105.adaptSize,
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 105.adaptSize,
                              width: 105.adaptSize,
                              padding: EdgeInsets.symmetric(
                                horizontal: 19.h,
                                vertical: 28.v,
                              ),
                              decoration: AppDecoration.fillBlueGray.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder52,
                              ),
                              child: Opacity(
                                opacity: 0.3,
                                child: CustomImageView(
                                  imagePath: ImageConstant
                                      .imgPlaceHolderErrorcontainer,
                                  height: 48.v,
                                  width: 65.h,
                                  alignment: Alignment.center,
                                ),
                              ),
                            ),
                          ),
                          CustomIconButton(
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                            padding: EdgeInsets.all(8.h),
                            decoration: IconButtonStyleHelper.fillPrimaryTL20,
                            alignment: Alignment.bottomRight,
                            child: CustomImageView(
                              imagePath: ImageConstant
                                  .imgButtonImageChangeOnprimarycontainer,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 21.v),
                    Text(
                      "lbl_jessica_smith".tr,
                      style: CustomTextStyles.headlineSmallMedium,
                    ),
                    SizedBox(height: 10.v),
                    Text(
                      "lbl_freelancer".tr,
                      style: CustomTextStyles.bodyMediumErrorContainer,
                    ),
                    SizedBox(height: 31.v),
                    _buildK(context),
                    SizedBox(height: 32.v),
                    _buildMyCoupons(
                      context,
                      userIcon: ImageConstant.imgIcon34,
                      userName: "lbl_my_wallet".tr,
                    ),
                    SizedBox(height: 16.v),
                    _buildMyCoupons(
                      context,
                      userIcon: ImageConstant.imgIconOnprimarycontainer,
                      userName: "lbl_my_coupons".tr,
                    ),
                    SizedBox(height: 16.v),
                    _buildMyCoupons(
                      context,
                      userIcon: ImageConstant.imgIcon35,
                      userName: "lbl_bookmarks".tr,
                    ),
                    SizedBox(height: 31.v),
                  ],
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildSubtract(context),
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
                  imagePath: ImageConstant.imgButtonSettingPrimary,
                  margin: EdgeInsets.only(bottom: 1.v),
                ),
                AppbarSubtitle(
                  text: "lbl_profile".tr,
                  margin: EdgeInsets.only(
                    left: 121.h,
                    bottom: 5.v,
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
  Widget _buildK(BuildContext context) {
    return Container(
      width: 343.h,
      padding: EdgeInsets.symmetric(
        horizontal: 56.h,
        vertical: 11.v,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgGroup1467,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 1.v),
            child: _buildFollowing(
              context,
              userLabel: "lbl_6_3k".tr,
              followingLabel: "lbl_followers".tr,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: _buildFollowing(
              context,
              userLabel: "lbl_10_5k".tr,
              followingLabel: "lbl_following".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSubtract(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }

  /// Common widget
  Widget _buildFollowing(
    BuildContext context, {
    required String userLabel,
    required String followingLabel,
  }) {
    return Column(
      children: [
        Text(
          userLabel,
          style: CustomTextStyles.titleLargeLato.copyWith(
            color: theme.colorScheme.primary,
          ),
        ),
        SizedBox(height: 5.v),
        Text(
          followingLabel,
          style: theme.textTheme.labelLarge!.copyWith(
            color: theme.colorScheme.errorContainer,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildMyCoupons(
    BuildContext context, {
    required String userIcon,
    required String userName,
  }) {
    return Container(
      width: 343.h,
      padding: EdgeInsets.symmetric(vertical: 17.v),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgShapePrimary,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 48.adaptSize,
            width: 48.adaptSize,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgShapeYellow900,
                  height: 48.adaptSize,
                  width: 48.adaptSize,
                  alignment: Alignment.center,
                ),
                CustomImageView(
                  imagePath: userIcon,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 15.v,
              bottom: 12.v,
            ),
            child: Text(
              userName,
              style: CustomTextStyles.titleMediumPrimary_1.copyWith(
                color: theme.colorScheme.primary,
              ),
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowLeftPrimary,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 12.v),
          ),
        ],
      ),
    );
  }
}
