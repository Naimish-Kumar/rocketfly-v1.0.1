import '../models/categorieslist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';

// ignore: must_be_immutable
class CategorieslistItemWidget extends StatelessWidget {
  CategorieslistItemWidget(
    this.categorieslistItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(
          key: key,
        );

  CategorieslistItemModel categorieslistItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.transparent,
      ),
      child: RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 12.h,
          vertical: 8.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          categorieslistItemModelObj.all!,
          style: TextStyle(
            color: (categorieslistItemModelObj.isSelected ?? false)
                ? theme.colorScheme.onPrimaryContainer
                : theme.colorScheme.primary,
            fontSize: 12.fSize,
            fontFamily: 'Lato',
            fontWeight: FontWeight.w600,
          ),
        ),
        selected: (categorieslistItemModelObj.isSelected ?? false),
        backgroundColor: Colors.transparent,
        selectedColor: theme.colorScheme.primary,
        shape: (categorieslistItemModelObj.isSelected ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  16.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide(
                  color: theme.colorScheme.primary,
                  width: 2.h,
                ),
                borderRadius: BorderRadius.circular(
                  16.h,
                ),
              ),
        onSelected: (value) {
          onSelectedChipView?.call(value);
        },
      ),
    );
  }
}
