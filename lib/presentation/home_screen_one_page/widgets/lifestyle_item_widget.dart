import '../models/lifestyle_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/custom_elevated_button.dart';
import 'package:rocketfly/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class LifestyleItemWidget extends StatelessWidget {
  LifestyleItemWidget(
    this.lifestyleItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  LifestyleItemModel lifestyleItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 128.adaptSize,
          width: 128.adaptSize,
          padding: EdgeInsets.symmetric(
            horizontal: 23.h,
            vertical: 34.v,
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
        Column(
          children: [
            SizedBox(
              width: 203.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomElevatedButton(
                    height: 28.v,
                    width: 57.h,
                    text: "lbl_life_style2".tr,
                    buttonStyle: CustomButtonStyles.fillErrorContainer,
                    buttonTextStyle: theme.textTheme.labelMedium!,
                  ),
                  CustomIconButton(
                    height: 28.adaptSize,
                    width: 28.adaptSize,
                    padding: EdgeInsets.all(5.h),
                    decoration: IconButtonStyleHelper.fillErrorContainer,
                    child: CustomImageView(
                      imagePath: lifestyleItemModelObj.bookmark,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.v),
            SizedBox(
              height: 64.v,
              width: 203.h,
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
                            lifestyleItemModelObj.distance!,
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
                          width: 178.h,
                          child: Text(
                            lifestyleItemModelObj.makeUpForBeginners!,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.titleSmall!.copyWith(
                              height: 1.29,
                            ),
                          ),
                        ),
                        SizedBox(height: 12.v),
                        Text(
                          lifestyleItemModelObj.price!,
                          style: CustomTextStyles.labelLargePrimary_1,
                        ),
                      ],
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
                    imagePath: ImageConstant.imgIconYellow900,
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
                            style: theme.textTheme.labelLarge,
                          ),
                          TextSpan(
                            text: "lbl".tr,
                            style: theme.textTheme.labelLarge,
                          ),
                          TextSpan(
                            text: "lbl_8".tr,
                            style: theme.textTheme.labelLarge,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text: "lbl_6_5k_ratings".tr,
                            style: theme.textTheme.labelLarge,
                          ),
                          TextSpan(
                            text: "lbl_2_7k".tr,
                            style: theme.textTheme.labelLarge,
                          ),
                          TextSpan(
                            text: "lbl_students".tr,
                            style: theme.textTheme.labelLarge,
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
      ],
    );
  }
}
