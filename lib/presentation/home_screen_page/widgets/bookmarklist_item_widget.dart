import '../models/bookmarklist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class BookmarklistItemWidget extends StatelessWidget {
  BookmarklistItemWidget(
    this.bookmarklistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  BookmarklistItemModel bookmarklistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 1.v),
      width: 142.h,
      child: Column(
        children: [
          SizedBox(
            height: 160.v,
            width: 140.h,
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 8.v,
                    right: 8.h,
                  ),
                  child: CustomIconButton(
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    padding: EdgeInsets.all(6.h),
                    alignment: Alignment.topRight,
                    child: CustomImageView(
                      imagePath: bookmarklistItemModelObj?.bookmark,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 8.h,
                      bottom: 8.v,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.h,
                      vertical: 7.v,
                    ),
                    decoration:
                        AppDecoration.gradientDeepPurpleAToDeepPurpleA.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder4,
                    ),
                    child: Text(
                      bookmarklistItemModelObj.business!,
                      style: theme.textTheme.labelMedium,
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: bookmarklistItemModelObj?.business1,
                  height: 160.v,
                  width: 140.h,
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
          SizedBox(height: 14.v),
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: 132.h,
              child: Text(
                bookmarklistItemModelObj.masterYourMindset!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.labelLargeOnErrorSemiBold.copyWith(
                  height: 1.50,
                ),
              ),
            ),
          ),
          SizedBox(height: 3.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 1.v),
                child: Text(
                  bookmarklistItemModelObj.duration!,
                  style: CustomTextStyles.labelLargeOnError,
                ),
              ),
              CustomImageView(
                imagePath: bookmarklistItemModelObj?.years,
                height: 16.adaptSize,
                width: 16.adaptSize,
                margin: EdgeInsets.only(left: 22.h),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 4.h,
                  top: 1.v,
                ),
                child: Text(
                  bookmarklistItemModelObj.distance!,
                  style: CustomTextStyles.labelLargeGray700_1,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
