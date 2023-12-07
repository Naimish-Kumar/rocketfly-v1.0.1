import '../models/refundstatuscommon1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';

// ignore: must_be_immutable
class Refundstatuscommon1ItemWidget extends StatelessWidget {
  Refundstatuscommon1ItemWidget(
    this.refundstatuscommon1ItemModelObj, {
    Key? key,
    this.onSelectedExpandableList,
  }) : super(
          key: key,
        );

  Refundstatuscommon1ItemModel refundstatuscommon1ItemModelObj;

  Function(bool)? onSelectedExpandableList;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // image: DecorationImage(
        //   image: .Svg(
        //     ImageConstant.imgGroup204,
        //   ),
        //   fit: BoxFit.cover,
        // ),
      ),
      margin: EdgeInsets.only(top: 24.v),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          tilePadding: EdgeInsets.zero,
          title: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 3.v),
                child: Text(
                  "msg_how_can_i_submit".tr,
                  style: CustomTextStyles.titleMediumYellow900,
                ),
              ),
            ],
          ),
          trailing: (refundstatuscommon1ItemModelObj.isSelected ?? false)
              ? CustomImageView(
                  imagePath: ImageConstant.imgIcon52,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(left: 68.h),
                )
              : CustomImageView(
                  imagePath: ImageConstant.imgIconYellow90018x18,
                  height: 18.adaptSize,
                  width: 18.adaptSize,
                  margin: EdgeInsets.only(left: 68.h),
                ),
          children: [
            Padding(
              padding: EdgeInsets.only(top: 13.v),
              child: Column(
                children: [
                  Container(
                    width: 335.h,
                    margin: EdgeInsets.only(right: 7.h),
                    child: Text(
                      "msg_refund_requests".tr,
                      maxLines: 6,
                      overflow: TextOverflow.ellipsis,
                      style:
                          CustomTextStyles.titleSmallErrorContainer_1.copyWith(
                        height: 1.43,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
          onExpansionChanged: (value) {
            onSelectedExpandableList?.call(value);
          },
        ),
      ),
    );
  }
}
