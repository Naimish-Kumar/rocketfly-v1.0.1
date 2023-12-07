import '../models/thecompletelist1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';

// ignore: must_be_immutable
class Thecompletelist1ItemWidget extends StatelessWidget {
  Thecompletelist1ItemWidget(
    this.thecompletelist1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Thecompletelist1ItemModel thecompletelist1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 80.adaptSize,
          width: 80.adaptSize,
          padding: EdgeInsets.symmetric(
            horizontal: 13.h,
            vertical: 20.v,
          ),
          decoration: AppDecoration.fillBlueGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: Opacity(
            opacity: 0.3,
            child: CustomImageView(
              imagePath: ImageConstant.imgPlaceHolderErrorcontainer,
              height: 40.v,
              width: 54.h,
              alignment: Alignment.center,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 12.h,
            top: 4.v,
            bottom: 4.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 143.h,
                child: Text(
                  thecompletelist1ItemModelObj.theComplete!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleMediumPrimary_1.copyWith(
                    height: 1.25,
                  ),
                ),
              ),
              SizedBox(height: 13.v),
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgIconErrorcontainer16x16,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text(
                      thecompletelist1ItemModelObj.distance!,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 28.h),
          child: SizedBox(
            height: 80.adaptSize,
            width: 80.adaptSize,
            child: CircularProgressIndicator(
              value: 0.5,
              strokeWidth: 4.h,
            ),
          ),
        ),
      ],
    );
  }
}
