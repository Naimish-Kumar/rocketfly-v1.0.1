import 'package:flutter/material.dart';import 'package:rocketfly/presentation/reviews_screen/models/reviews_model.dart';/// A provider class for the ReviewsScreen.
///
/// This provider manages the state of the ReviewsScreen, including the
/// current reviewsModelObj

// ignore_for_file: must_be_immutable
class ReviewsProvider extends ChangeNotifier {ReviewsModel reviewsModelObj = ReviewsModel();

@override void dispose() { super.dispose(); } 
 }
