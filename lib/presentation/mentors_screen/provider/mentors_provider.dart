import 'package:flutter/material.dart';import 'package:rocketfly/core/app_export.dart';import 'package:rocketfly/presentation/mentors_screen/models/mentors_model.dart';import '../models/following_item_model.dart';/// A provider class for the MentorsScreen.
///
/// This provider manages the state of the MentorsScreen, including the
/// current mentorsModelObj

// ignore_for_file: must_be_immutable
class MentorsProvider extends ChangeNotifier {MentorsModel mentorsModelObj = MentorsModel();

@override void dispose() { super.dispose(); } 
 }
