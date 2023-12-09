
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';

class OnboardingScreenThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
            SizedBox(height: 50.v),
          CustomImageView(
            fit: BoxFit.contain,
            imagePath: ImageConstant.imgMaskGroup1,
            height: 343.adaptSize,
            width: double.maxFinite,
          ),
          SizedBox(height: 30.v),
          Container(
            width: 330.h,
            margin: EdgeInsets.only(
              left: 6.h,
              right: 5.h,
            ),
            child: Text(
              "msg_let_s_improve_your".tr,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.headlineLargeOnError.copyWith(
                height: 1.13,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
}
