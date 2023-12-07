import '../models/list_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/custom_elevated_button.dart';
import 'package:rocketfly/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListItemWidget extends StatelessWidget {
  ListItemWidget(
    this.listItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListItemModel listItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2.h),
      child: Row(
        children: [
          CustomImageView(
            imagePath: listItemModelObj?.image,
            height: 128.adaptSize,
            width: 128.adaptSize,
            margin: EdgeInsets.only(
              top: 2.v,
              bottom: 1.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 2.v,
            ),
            child: Column(
              children: [
                SizedBox(
                  width: 203.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomElevatedButton(
                        height: 28.v,
                        width: 63.h,
                        text: "lbl_3d_design".tr,
                        buttonStyle: CustomButtonStyles.fillGray,
                        buttonTextStyle: CustomTextStyles.labelMediumOnError,
                      ),
                      CustomIconButton(
                        height: 28.adaptSize,
                        width: 28.adaptSize,
                        padding: EdgeInsets.all(5.h),
                        decoration: IconButtonStyleHelper.fillGray,
                        child: CustomImageView(
                          imagePath: listItemModelObj?.bookmark,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12.v),
                SizedBox(
                  width: 203.h,
                  child: Text(
                    listItemModelObj.completeBlender!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleSmallOnError_1.copyWith(
                      height: 1.29,
                    ),
                  ),
                ),
                SizedBox(height: 10.v),
                SizedBox(
                  width: 203.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        listItemModelObj.duration!,
                        style: CustomTextStyles.labelLargeOnError,
                      ),
                      Spacer(),
                      CustomImageView(
                        imagePath: ImageConstant.imgIconGray700,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Text(
                          listItemModelObj.distance!,
                          style: CustomTextStyles.labelLargeGray700_1,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 7.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgIconOnsecondarycontainer,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl_4".tr,
                                style: CustomTextStyles.labelLargeGray700,
                              ),
                              TextSpan(
                                text: "lbl".tr,
                                style: CustomTextStyles.labelLargeGray700,
                              ),
                              TextSpan(
                                text: "lbl_8".tr,
                                style: CustomTextStyles.labelLargeGray700,
                              ),
                              TextSpan(
                                text: " ",
                              ),
                              TextSpan(
                                text: "lbl_6_5k_ratings".tr,
                                style: CustomTextStyles.labelLargeGray700,
                              ),
                              TextSpan(
                                text: "lbl_2_7k".tr,
                                style: CustomTextStyles.labelLargeGray700,
                              ),
                              TextSpan(
                                text: "lbl_students".tr,
                                style: CustomTextStyles.labelLargeGray700,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
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
