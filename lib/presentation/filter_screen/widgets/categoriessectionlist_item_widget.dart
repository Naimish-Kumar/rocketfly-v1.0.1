import '../models/categoriessectionlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';

// ignore: must_be_immutable
class CategoriessectionlistItemWidget extends StatelessWidget {
  CategoriessectionlistItemWidget(
    this.categoriessectionlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CategoriessectionlistItemModel categoriessectionlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 85.h),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgIconPrimary24x24,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 2.v,
            ),
            child: Text(
              "msg_business_2_315".tr,
              style: CustomTextStyles.titleMediumGray700_2,
            ),
          ),
        ],
      ),
    );
  }
}
