import '../models/chatlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ChatlistItemWidget extends StatelessWidget {
  ChatlistItemWidget(
    this.chatlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ChatlistItemModel chatlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 7.h,
        vertical: 4.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 64.adaptSize,
            width: 64.adaptSize,
            margin: EdgeInsets.only(bottom: 7.v),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                CustomIconButton(
                  height: 64.adaptSize,
                  width: 64.adaptSize,
                  padding: EdgeInsets.all(11.h),
                  decoration: IconButtonStyleHelper.fillBlueGray,
                  alignment: Alignment.center,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgPlaceHolderErrorcontainer,
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    padding: EdgeInsets.all(4.h),
                    decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: Container(
                      height: 8.adaptSize,
                      width: 8.adaptSize,
                      decoration: BoxDecoration(
                        color: appTheme.green400,
                        borderRadius: BorderRadius.circular(
                          4.h,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 13.v,
                bottom: 17.v,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        chatlistItemModelObj.jennyWilona!,
                        style: CustomTextStyles.titleMediumPrimarySemiBold_1,
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Text(
                          chatlistItemModelObj.time!,
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 1.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 4.v),
                        child: Text(
                          chatlistItemModelObj.heyGoodMorning!,
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                      Container(
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(bottom: 3.v),
                        padding: EdgeInsets.symmetric(
                          horizontal: 5.h,
                          vertical: 1.v,
                        ),
                        decoration: AppDecoration.fillGreen.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder8,
                        ),
                        child: Text(
                          chatlistItemModelObj.remainingViewMsg!,
                          style: CustomTextStyles.labelMediumOnPrimaryContainer,
                        ),
                      ),
                    ],
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
