import '../models/duration_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';

// ignore: must_be_immutable
class DurationItemWidget extends StatelessWidget {
  DurationItemWidget(
    this.durationItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DurationItemModel durationItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.outlinePrimary1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Text(
              durationItemModelObj.duration!,
              style: theme.textTheme.bodyLarge,
            ),
          ),
          CustomImageView(
            imagePath: durationItemModelObj?.casualMinutes,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ],
      ),
    );
  }
}
