import '../models/introductionsection_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';

// ignore: must_be_immutable
class IntroductionsectionItemWidget extends StatelessWidget {
  IntroductionsectionItemWidget(
    this.introductionsectionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  IntroductionsectionItemModel introductionsectionItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.h),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgIcon54,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 3.v,
              bottom: 3.v,
            ),
            child: Text(
              "lbl_promotion".tr,
              style: CustomTextStyles.titleSmallOnError_1,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 3.v),
            child: Text(
              "lbl_01_53".tr,
              style: CustomTextStyles.titleSmallGray700_2,
            ),
          ),
        ],
      ),
    );
  }
}
