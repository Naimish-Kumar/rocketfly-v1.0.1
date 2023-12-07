import '../models/introduction2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';

// ignore: must_be_immutable
class Introduction2ItemWidget extends StatelessWidget {
  Introduction2ItemWidget(
    this.introduction2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Introduction2ItemModel introduction2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.h),
      decoration: AppDecoration.fillErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgIcon55,
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
              style: theme.textTheme.titleSmall,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 3.v),
            child: Text(
              "lbl_01_53".tr,
              style: CustomTextStyles.titleSmallErrorContainer_1,
            ),
          ),
        ],
      ),
    );
  }
}
