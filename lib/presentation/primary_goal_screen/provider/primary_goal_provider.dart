import 'package:flutter/material.dart';import 'package:rocketfly/core/app_export.dart';import 'package:rocketfly/presentation/primary_goal_screen/models/primary_goal_model.dart';import '../models/startanewcareerandskills_item_model.dart';/// A provider class for the PrimaryGoalScreen.
///
/// This provider manages the state of the PrimaryGoalScreen, including the
/// current primaryGoalModelObj

// ignore_for_file: must_be_immutable
class PrimaryGoalProvider extends ChangeNotifier {PrimaryGoalModel primaryGoalModelObj = PrimaryGoalModel();

@override void dispose() { super.dispose(); } 
 }
