import '../models/two_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';

// ignore: must_be_immutable
class TwoItemWidget extends StatelessWidget {
  TwoItemWidget(
    this.twoItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TwoItemModel twoItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 74.h,
      child: Padding(
        padding: EdgeInsets.only(bottom: 1.v),
        child: Column(
          children: [
            Container(
              height: 74.adaptSize,
              width: 74.adaptSize,
              padding: EdgeInsets.all(17.h),
              decoration: AppDecoration.fillDeeppurpleA100.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder37,
              ),
              child: CustomImageView(
                imagePath: twoItemModelObj?.image,
                height: 40.adaptSize,
                width: 40.adaptSize,
                alignment: Alignment.center,
              ),
            ),
            SizedBox(height: 12.v),
            Text(
              twoItemModelObj.two!,
              style: CustomTextStyles.titleLargeLato,
            ),
            SizedBox(height: 4.v),
            Text(
              twoItemModelObj.courses!,
              style: theme.textTheme.labelLarge,
            ),
          ],
        ),
      ),
    );
  }
}
