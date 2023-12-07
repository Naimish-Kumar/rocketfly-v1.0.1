import '../models/business_item_model.dart';
import '../models/businesslist1_item_model.dart';
import '../widgets/business_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';

// ignore: must_be_immutable
class Businesslist1ItemWidget extends StatelessWidget {
  Businesslist1ItemWidget(
    this.businesslist1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Businesslist1ItemModel businesslist1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisExtent: 171.v,
        crossAxisCount: 2,
        mainAxisSpacing: 16.h,
        crossAxisSpacing: 16.h,
      ),
      physics: NeverScrollableScrollPhysics(),
      itemCount: businesslist1ItemModelObj.businessItemList!.length,
      itemBuilder: (context, index) {
        BusinessItemModel model =
            businesslist1ItemModelObj.businessItemList![index];
        return BusinessItemWidget(
          model,
        );
      },
    );
  }
}
