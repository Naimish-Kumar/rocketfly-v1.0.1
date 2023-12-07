import '../models/categories_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';

// ignore: must_be_immutable
class CategoriesItemWidget extends StatelessWidget {
  CategoriesItemWidget(
    this.categoriesItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CategoriesItemModel categoriesItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100.v,
            width: 140.h,
            padding: EdgeInsets.symmetric(
              horizontal: 29.h,
              vertical: 20.v,
            ),
            decoration: AppDecoration.fillBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Opacity(
              opacity: 0.3,
              child: CustomImageView(
                imagePath: ImageConstant.imgPlaceHolderErrorcontainer,
                height: 60.v,
                width: 81.h,
                alignment: Alignment.center,
              ),
            ),
          ),
          SizedBox(height: 12.v),
          Text(
            categoriesItemModelObj.business!,
            style: CustomTextStyles.titleMediumPrimarySemiBold_1,
          ),
          SizedBox(height: 3.v),
          Text(
            categoriesItemModelObj.coursesCounter!,
            style: theme.textTheme.labelLarge,
          ),
        ],
      ),
    );
  }
}
