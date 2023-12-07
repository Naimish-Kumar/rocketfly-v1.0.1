import '../models/thecompletelist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';

// ignore: must_be_immutable
class ThecompletelistItemWidget extends StatelessWidget {
  ThecompletelistItemWidget(
    this.thecompletelistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ThecompletelistItemModel thecompletelistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: thecompletelistItemModelObj.image,
            height: 80.adaptSize,
            width: 80.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 5.v,
              bottom: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 143.h,
                  child: Text(
                    thecompletelistItemModelObj.theComplete!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleMediumOnError_1.copyWith(
                      height: 1.25,
                    ),
                  ),
                ),
                SizedBox(height: 13.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgIconGray700,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        thecompletelistItemModelObj.distance!,
                        style: CustomTextStyles.labelLargeGray700_1,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 80.adaptSize,
            width: 80.adaptSize,
            margin: EdgeInsets.only(left: 28.h),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 80.adaptSize,
                    width: 80.adaptSize,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        40.h,
                      ),
                      border: Border.all(
                        color: theme.colorScheme.onError.withOpacity(1),
                        width: 4.h,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    thecompletelistItemModelObj.oneHundred!,
                    style: CustomTextStyles.titleMediumOnErrorSemiBold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
