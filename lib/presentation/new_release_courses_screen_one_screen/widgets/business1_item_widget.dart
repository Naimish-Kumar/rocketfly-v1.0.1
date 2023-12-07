import '../models/business1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/custom_elevated_button.dart';
import 'package:rocketfly/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Business1ItemWidget extends StatelessWidget {
  Business1ItemWidget(
    this.business1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Business1ItemModel business1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 170.v,
          width: 163.h,
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 170.v,
                  width: 163.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 41.h,
                    vertical: 55.v,
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
                  height: 32.v,
                  width: 31.h,
                  padding: EdgeInsets.all(5.h),
                  alignment: Alignment.topRight,
                  child: CustomImageView(
                    imagePath: business1ItemModelObj.bookmark,
                  ),
                ),
              ),
              CustomElevatedButton(
                height: 28.v,
                width: 55.h,
                text: "lbl_business".tr,
                margin: EdgeInsets.only(
                  left: 8.h,
                  bottom: 8.v,
                ),
                buttonStyle: CustomButtonStyles.none,
                decoration:
                    CustomButtonStyles.gradientOnErrorToOnErrorDecoration,
                buttonTextStyle: theme.textTheme.labelMedium!,
                alignment: Alignment.bottomLeft,
              ),
            ],
          ),
        ),
        SizedBox(height: 12.v),
        SizedBox(
          height: 60.v,
          width: 163.h,
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
                        business1ItemModelObj.distance!,
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
                      width: 154.h,
                      child: Text(
                        business1ItemModelObj.masterYourMindset!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.titleSmallSemiBold.copyWith(
                          height: 1.29,
                        ),
                      ),
                    ),
                    SizedBox(height: 9.v),
                    Text(
                      business1ItemModelObj.price!,
                      style: CustomTextStyles.labelLargePrimary_1,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
