import '../models/courses_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class CoursesItemWidget extends StatelessWidget {
  CoursesItemWidget(
    this.coursesItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CoursesItemModel coursesItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140.h,
      child: Column(
        children: [
          SizedBox(
            height: 160.v,
            width: 140.h,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 160.v,
                    width: 140.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 29.h,
                      vertical: 50.v,
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
                ),
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
                      imagePath: coursesItemModelObj.bookmark,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    width: 55.h,
                    margin: EdgeInsets.only(
                      left: 8.h,
                      bottom: 8.v,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.h,
                      vertical: 7.v,
                    ),
                    decoration: AppDecoration.gradientOnErrorToOnError.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder4,
                    ),
                    child: Text(
                      coursesItemModelObj.category!,
                      style: theme.textTheme.labelMedium,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 14.v),
          SizedBox(
            height: 56.v,
            width: 140.h,
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgIconErrorcontainer16x16,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Text(
                          coursesItemModelObj.distance!,
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 132.h,
                        child: Text(
                          coursesItemModelObj.masterYourMindset!,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.labelLargePrimary.copyWith(
                            height: 1.50,
                          ),
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Text(
                        coursesItemModelObj.price!,
                        style: CustomTextStyles.labelLargePrimary_1,
                      ),
                    ],
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
