import '../models/review_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';

// ignore: must_be_immutable
class ReviewItemWidget extends StatelessWidget {
  ReviewItemWidget(
    this.reviewItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(
          key: key,
        );

  ReviewItemModel reviewItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.transparent,
      ),
      child: RawChip(
        padding: EdgeInsets.only(
          top: 8.v,
          right: 12.h,
          bottom: 8.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          reviewItemModelObj.all!,
          style: TextStyle(
            color: (reviewItemModelObj.isSelected ?? false)
                ? theme.colorScheme.onPrimaryContainer
                : theme.colorScheme.primary,
            fontSize: 12.fSize,
            fontFamily: 'Lato',
            fontWeight: FontWeight.w500,
          ),
        ),
        avatar: CustomImageView(
          imagePath: ImageConstant.imgIconYellow900,
          height: 16.adaptSize,
          width: 16.adaptSize,
          margin: EdgeInsets.only(right: 4.h),
        ),
        selected: (reviewItemModelObj.isSelected ?? false),
        backgroundColor: Colors.transparent,
        selectedColor: theme.colorScheme.primary,
        shape: (reviewItemModelObj.isSelected ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  16.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide(
                  color: theme.colorScheme.primary,
                  width: 2.h,
                ),
                borderRadius: BorderRadius.circular(
                  16.h,
                ),
              ),
        onSelected: (value) {
          onSelectedChipView?.call(value);
        },
      ),
    );
  }
}
