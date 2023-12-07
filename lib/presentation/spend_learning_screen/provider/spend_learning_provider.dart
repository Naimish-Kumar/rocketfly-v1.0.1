import 'package:flutter/material.dart';import 'package:rocketfly/core/app_export.dart';import 'package:rocketfly/presentation/spend_learning_screen/models/spend_learning_model.dart';import '../models/duration_item_model.dart';/// A provider class for the SpendLearningScreen.
///
/// This provider manages the state of the SpendLearningScreen, including the
/// current spendLearningModelObj

// ignore_for_file: must_be_immutable
class SpendLearningProvider extends ChangeNotifier {SpendLearningModel spendLearningModelObj = SpendLearningModel();

@override void dispose() { super.dispose(); } 
 }
