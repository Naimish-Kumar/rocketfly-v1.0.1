import '../models/following_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class FollowingItemWidget extends StatelessWidget {
  FollowingItemWidget(
    this.followingItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FollowingItemModel followingItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 96.adaptSize,
          width: 96.adaptSize,
          padding: EdgeInsets.symmetric(
            horizontal: 15.h,
            vertical: 24.v,
          ),
          decoration: AppDecoration.fillBlueGray.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder48,
          ),
          child: Opacity(
            opacity: 0.3,
            child: CustomImageView(
              imagePath: ImageConstant.imgPlaceHolderErrorcontainer,
              height: 48.v,
              width: 65.h,
              alignment: Alignment.center,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 6.v,
            bottom: 4.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                followingItemModelObj.jacobClark!,
                style: CustomTextStyles.titleMediumPrimary,
              ),
              SizedBox(height: 11.v),
              Text(
                followingItemModelObj.kFollowers!,
                style: theme.textTheme.titleSmall,
              ),
              SizedBox(height: 17.v),
              Text(
                followingItemModelObj.businessDesign!,
                style: CustomTextStyles.titleSmallErrorContainer_1,
              ),
            ],
          ),
        ),
        Spacer(),
        CustomOutlinedButton(
          height: 30.v,
          width: 67.h,
          text: "lbl_following".tr,
          margin: EdgeInsets.symmetric(vertical: 33.v),
          buttonStyle: CustomButtonStyles.outlinePrimaryTL4,
          buttonTextStyle: CustomTextStyles.labelLargePrimary_1,
        ),
      ],
    );
  }
}
