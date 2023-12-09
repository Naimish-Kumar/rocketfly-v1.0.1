import '../models/business_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';

// ignore: must_be_immutable
class BusinessItemWidget extends StatelessWidget {
  BusinessItemWidget(
    this.businessItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  BusinessItemModel businessItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 120.v,
          width: 163.h,
          padding: EdgeInsets.symmetric(
            horizontal: 40.h,
            vertical: 30.v,
          ),
          decoration: AppDecoration.fillBlueGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: Opacity(
            opacity: 0.3,
            child: CustomImageView(
              imagePath: ImageConstant.imgPlaceHolderErrorcontainer,
              height: 60.v,
              width: 81.h,
              alignment: Alignment.center,
            ),
          ),
        ),
        SizedBox(height: 12.v),
        Text(
          businessItemModelObj.business!,
          style: CustomTextStyles.titleMediumPrimarySemiBold_1,
        ),
        SizedBox(height: 3.v),
        Text(
          businessItemModelObj.coursesCounter!,
          style: theme.textTheme.labelLarge,
        ),
      ],
    );
  }
}
