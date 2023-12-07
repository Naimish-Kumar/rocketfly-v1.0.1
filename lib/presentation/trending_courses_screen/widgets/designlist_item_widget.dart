import '../models/designlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/custom_elevated_button.dart';
import 'package:rocketfly/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class DesignlistItemWidget extends StatelessWidget {
  DesignlistItemWidget(
    this.designlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DesignlistItemModel designlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180.v,
      width: 343.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: designlistItemModelObj?.image,
            height: 180.v,
            width: 343.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomIconButton(
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    padding: EdgeInsets.all(6.h),
                    alignment: Alignment.centerRight,
                    child: CustomImageView(
                      imagePath: designlistItemModelObj?.bookmark,
                    ),
                  ),
                  SizedBox(height: 99.v),
                  CustomElevatedButton(
                    height: 33.v,
                    width: 59.h,
                    text: "lbl_design".tr,
                    buttonStyle: CustomButtonStyles.none,
                    decoration: CustomButtonStyles
                        .gradientDeepPurpleAToDeepPurpleADecoration,
                    buttonTextStyle: theme.textTheme.titleSmall!,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
