import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';

class OnboardingScreenOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Skip',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
          ),
          CustomImageView(
             fit: BoxFit.contain,
            imagePath: ImageConstant.imgMaskGroup,
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
            child: Center(
              child: Text(
                "msg_we_provide_the_best".tr,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.headlineLargeOnError.copyWith(
                  height: 1.13,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
}
