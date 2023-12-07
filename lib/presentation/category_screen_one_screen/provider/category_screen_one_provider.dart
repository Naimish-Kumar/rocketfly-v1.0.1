import 'package:flutter/material.dart';import 'package:rocketfly/core/app_export.dart';import 'package:rocketfly/presentation/category_screen_one_screen/models/category_screen_one_model.dart';import '../models/businesslist1_item_model.dart';import '../models/business_item_model.dart';/// A provider class for the CategoryScreenOneScreen.
///
/// This provider manages the state of the CategoryScreenOneScreen, including the
/// current categoryScreenOneModelObj

// ignore_for_file: must_be_immutable
class CategoryScreenOneProvider extends ChangeNotifier {CategoryScreenOneModel categoryScreenOneModelObj = CategoryScreenOneModel();

@override void dispose() { super.dispose(); } 
 }
