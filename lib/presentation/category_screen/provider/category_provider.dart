import 'package:flutter/material.dart';import 'package:rocketfly/core/app_export.dart';import 'package:rocketfly/presentation/category_screen/models/category_model.dart';/// A provider class for the CategoryScreen.
///
/// This provider manages the state of the CategoryScreen, including the
/// current categoryModelObj

// ignore_for_file: must_be_immutable
class CategoryProvider extends ChangeNotifier {CategoryModel categoryModelObj = CategoryModel();

@override void dispose() { super.dispose(); } 
 }
