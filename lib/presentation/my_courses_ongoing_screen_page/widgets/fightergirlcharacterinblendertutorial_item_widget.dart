import '../models/fightergirlcharacterinblendertutorial_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';

// ignore: must_be_immutable
class FightergirlcharacterinblendertutorialItemWidget extends StatelessWidget {
  FightergirlcharacterinblendertutorialItemWidget(
    this.fightergirlcharacterinblendertutorialItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FightergirlcharacterinblendertutorialItemModel
      fightergirlcharacterinblendertutorialItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: fightergirlcharacterinblendertutorialItemModelObj?.image,
            height: 80.adaptSize,
            width: 80.adaptSize,
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
                    fightergirlcharacterinblendertutorialItemModelObj
                        .fighterGirlCharacterinBlenderT!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleMediumOnError_1.copyWith(
                      height: 1.25,
                    ),
                  ),
                ),
                SizedBox(height: 15.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgIconGray700,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        fightergirlcharacterinblendertutorialItemModelObj
                            .distance!,
                        style: CustomTextStyles.labelLargeGray700_1,
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
                Opacity(
                  opacity: 0.08,
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 80.adaptSize,
                      width: 80.adaptSize,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          40.h,
                        ),
                        border: Border.all(
                          color: theme.colorScheme.onError,
                          width: 4.h,
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 80.adaptSize,
                    width: 80.adaptSize,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        40.h,
                      ),
                      border: Border.all(
                        color: appTheme.deepPurpleA100,
                        width: 4.h,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    fightergirlcharacterinblendertutorialItemModelObj.eighty!,
                    style: CustomTextStyles.titleMediumDeeppurpleA100,
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
