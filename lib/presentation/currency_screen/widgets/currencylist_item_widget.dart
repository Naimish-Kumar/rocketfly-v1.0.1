import '../models/currencylist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';

// ignore: must_be_immutable
class CurrencylistItemWidget extends StatelessWidget {
  CurrencylistItemWidget(
    this.currencylistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CurrencylistItemModel currencylistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 2.h,
        vertical: 11.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: currencylistItemModelObj.dollar,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(left: 2.h),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 2.v,
              bottom: 2.v,
            ),
            child: Text(
              currencylistItemModelObj.dollar1!,
              style: CustomTextStyles.titleMediumPrimary_1,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: currencylistItemModelObj.dollar2,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ],
      ),
    );
  }
}
