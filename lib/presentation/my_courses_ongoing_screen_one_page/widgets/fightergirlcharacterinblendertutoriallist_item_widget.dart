import '../models/fightergirlcharacterinblendertutoriallist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';

// ignore: must_be_immutable
class FightergirlcharacterinblendertutoriallistItemWidget
    extends StatelessWidget {
  FightergirlcharacterinblendertutoriallistItemWidget(
    this.fightergirlcharacterinblendertutoriallistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FightergirlcharacterinblendertutoriallistItemModel
      fightergirlcharacterinblendertutoriallistItemModelObj;

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
                width: 153.h,
                child: Text(
                  fightergirlcharacterinblendertutoriallistItemModelObj
                      .fighterGirlCharacterinBlenderT!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleMediumPrimary_1.copyWith(
                    height: 1.25,
                  ),
                ),
              ),
              SizedBox(height: 15.v),
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
                      fightergirlcharacterinblendertutoriallistItemModelObj
                          .distance!,
                      style: theme.textTheme.labelLarge,
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
          margin: EdgeInsets.only(left: 18.h),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 80.adaptSize,
                  width: 80.adaptSize,
                  child: CircularProgressIndicator(
                    value: 0.5,
                    strokeWidth: 4.h,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  fightergirlcharacterinblendertutoriallistItemModelObj.eighty!,
                  style: CustomTextStyles.titleMediumDeeppurpleA100,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
