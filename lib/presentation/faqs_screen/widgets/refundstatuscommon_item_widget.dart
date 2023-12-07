import '../models/refundstatuscommon_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';

// ignore: must_be_immutable
class RefundstatuscommonItemWidget extends StatelessWidget {
  RefundstatuscommonItemWidget(
    this.refundstatuscommonItemModelObj, {
    Key? key,
    this.onSelectedExpandableList,
  }) : super(
          key: key,
        );

  RefundstatuscommonItemModel refundstatuscommonItemModelObj;

  Function(bool)? onSelectedExpandableList;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // image: DecorationImage(
        //   image: fs.Svg(
        //     ImageConstant.imgGroup45,
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
                  style:
                      CustomTextStyles.titleMediumOnSecondaryContainerSemiBold,
                ),
              ),
            ],
          ),
          trailing: (refundstatuscommonItemModelObj.isSelected ?? false)
              ? CustomImageView(
                  imagePath: ImageConstant.imgIcon21,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(left: 68.h),
                )
              : CustomImageView(
                  imagePath: ImageConstant.imgIconOnsecondarycontainer18x18,
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
                      style: CustomTextStyles.titleSmallGray700_2.copyWith(
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
