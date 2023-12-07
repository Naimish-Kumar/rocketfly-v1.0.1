import '../models/vector1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';

// ignore: must_be_immutable
class Vector1ItemWidget extends StatelessWidget {
  Vector1ItemWidget(
    this.vector1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Vector1ItemModel vector1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 174.v,
        width: 343.h,
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                decoration: AppDecoration.fillOnErrorContainer.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Opacity(
                  opacity: 0.16,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgVectorErrorcontainer,
                    height: 174.v,
                    width: 343.h,
                    radius: BorderRadius.circular(
                      8.h,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 93.h,
                margin: EdgeInsets.only(
                  top: 24.v,
                  right: 24.h,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 4.h,
                  vertical: 2.v,
                ),
                decoration: AppDecoration.fillYellow.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder4,
                ),
                child: Text(
                  "lbl_use_code_g40".tr,
                  style: CustomTextStyles.labelLargePrimary_1,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 24.h,
                  top: 24.v,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_40_off".tr,
                      style: CustomTextStyles.labelLargePrimary_1,
                    ),
                    SizedBox(height: 11.v),
                    Text(
                      "lbl_today_s_special".tr,
                      style: CustomTextStyles.headlineSmallSemiBold,
                    ),
                    SizedBox(height: 17.v),
                    SizedBox(
                      width: 232.h,
                      child: Text(
                        "msg_get_a_discount_for".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.titleSmall!.copyWith(
                          height: 1.43,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
