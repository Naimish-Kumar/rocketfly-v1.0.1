import '../models/mobileapplicationlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';

// ignore: must_be_immutable
class MobileapplicationlistItemWidget extends StatelessWidget {
  MobileapplicationlistItemWidget(
    this.mobileapplicationlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MobileapplicationlistItemModel mobileapplicationlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 1.v,
            bottom: 2.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                mobileapplicationlistItemModelObj.mobileApplication!,
                style: CustomTextStyles.titleMediumOnError,
              ),
              SizedBox(height: 6.v),
              Text(
                mobileapplicationlistItemModelObj.price!,
                style: CustomTextStyles.titleSmallGray700_2,
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 8.h,
            vertical: 4.v,
          ),
          decoration: AppDecoration.fillGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder4,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 2.v),
                child: Text(
                  mobileapplicationlistItemModelObj.ten!,
                  style: CustomTextStyles.headlineLargeLatoOnSecondaryContainer,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 4.h,
                  top: 5.v,
                  bottom: 4.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      mobileapplicationlistItemModelObj.text!,
                      style: CustomTextStyles.labelLargeOnSecondaryContainer,
                    ),
                    Text(
                      mobileapplicationlistItemModelObj.off!,
                      style: CustomTextStyles.labelLargeOnSecondaryContainer,
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
