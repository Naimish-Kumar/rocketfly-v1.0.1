import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';
import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';
import 'package:rocketfly/widgets/custom_bottom_bar.dart';
import 'package:rocketfly/widgets/custom_icon_button.dart';
import 'provider/profile_provider.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ProfileScreenState createState() => ProfileScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProfileProvider(),
      child: ProfileScreen(),
    );
  }
}

class ProfileScreenState extends State<ProfileScreen> {
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
        backgroundColor: theme.colorScheme.primary,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.h),
                child: Column(
                  children: [
                    SizedBox(height: 22.v),
                    SizedBox(
                      height: 105.adaptSize,
                      width: 105.adaptSize,
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Opacity(
                            opacity: 0.3,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgPlaceHolder,
                              height: 48.v,
                              width: 65.h,
                              alignment: Alignment.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 10.v),
                            child: CustomIconButton(
                              height: 40.adaptSize,
                              width: 40.adaptSize,
                              padding: EdgeInsets.all(8.h),
                              decoration: IconButtonStyleHelper.fillDeepPurpleA,
                              alignment: Alignment.bottomRight,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgButtonImageChange,
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.img0046,
                            height: 105.adaptSize,
                            width: 105.adaptSize,
                            radius: BorderRadius.circular(
                              52.h,
                            ),
                            alignment: Alignment.center,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 21.v),
                    Text(
                      "lbl_jessica_smith".tr,
                      style: CustomTextStyles.headlineSmallOnError,
                    ),
                    SizedBox(height: 10.v),
                    Text(
                      "lbl_freelancer".tr,
                      style: CustomTextStyles.bodyMediumGray700,
                    ),
                    SizedBox(height: 33.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.h),
                      child: _buildMyCoupons(
                        context,
                        userIcon:
                            ImageConstant.imgIconOnsecondarycontainer24x24,
                        support: "lbl_my_certificate".tr,
                      ),
                    ),
                    SizedBox(height: 16.v),
                    _buildShape(context),
                  ],
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildHome(context),
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
                  text: "lbl_profile".tr,
                  margin: EdgeInsets.only(
                    left: 121.h,
                    bottom: 5.v,
                  ),
                ),
                AppbarTitleImage(
                  imagePath: ImageConstant.imgButtonNotification,
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
  Widget _buildShape(BuildContext context) {
    return SizedBox(
      height: 323.v,
      width: 351.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              bottom: 241.v,
            ),
            child: _buildMyCoupons(
              context,
              userIcon: ImageConstant.imgIconPrimary,
              support: "lbl_support".tr,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 98.v,
              bottom: 177.v,
            ),
            child: _buildMyCoupons(
              context,
              userIcon: ImageConstant.imgIcon9,
              support: "lbl_bookmarks".tr,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 160.v,
              bottom: 81.v,
            ),
            child: _buildMyCoupons(
              context,
              userIcon: ImageConstant.imgIconPrimary,
              support: "lbl_trivia".tr,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgMaskGroup96x96,
            height: 258.adaptSize,
            width: 258.adaptSize,
            alignment: Alignment.bottomLeft,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHome(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }

  /// Common widget
  Widget _buildMyCoupons(
    BuildContext context, {
    required String userIcon,
    required String support,
  }) {
    return Container(
      width: 343.h,
      padding: EdgeInsets.symmetric(vertical: 17.v),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgShapeOnerror,
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
                  imagePath: ImageConstant.imgShape,
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
              support,
              style: CustomTextStyles.titleMediumOnError_1.copyWith(
                color: theme.colorScheme.onError.withOpacity(1),
              ),
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowLeft,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 12.v),
          ),
        ],
      ),
    );
  }
}
