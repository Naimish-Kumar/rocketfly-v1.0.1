import '../models/businesslist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';

// ignore: must_be_immutable
class BusinesslistItemWidget extends StatelessWidget {
  BusinesslistItemWidget(
    this.businesslistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  BusinesslistItemModel businesslistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(1.h),
      width: 142.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: businesslistItemModelObj?.business,
            height: 100.v,
            width: 140.h,
          ),
          SizedBox(height: 12.v),
          Text(
            businesslistItemModelObj.business1!,
            style: CustomTextStyles.titleMediumOnError,
          ),
          SizedBox(height: 3.v),
          Text(
            businesslistItemModelObj.coursesCounter!,
            style: CustomTextStyles.labelLargeGray700_1,
          ),
        ],
      ),
    );
  }
}
