import 'package:flutter/material.dart';import 'package:rocketfly/core/app_export.dart';import 'package:rocketfly/presentation/reviews_screen_one_screen/models/reviews_screen_one_model.dart';/// A provider class for the ReviewsScreenOneScreen.
///
/// This provider manages the state of the ReviewsScreenOneScreen, including the
/// current reviewsScreenOneModelObj

// ignore_for_file: must_be_immutable
class ReviewsScreenOneProvider extends ChangeNotifier {ReviewsScreenOneModel reviewsScreenOneModelObj = ReviewsScreenOneModel();

@override void dispose() { super.dispose(); } 
 }
