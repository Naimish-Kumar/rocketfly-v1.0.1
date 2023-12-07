import 'package:flutter/material.dart';import 'package:rocketfly/core/app_export.dart';import 'package:rocketfly/presentation/single_mentor_students_screen_tab_container_screen/models/single_mentor_students_screen_tab_container_model.dart';import '../models/two_item_model.dart';/// A provider class for the SingleMentorStudentsScreenTabContainerScreen.
///
/// This provider manages the state of the SingleMentorStudentsScreenTabContainerScreen, including the
/// current singleMentorStudentsScreenTabContainerModelObj

// ignore_for_file: must_be_immutable
class SingleMentorStudentsScreenTabContainerProvider extends ChangeNotifier {SingleMentorStudentsScreenTabContainerModel singleMentorStudentsScreenTabContainerModelObj = SingleMentorStudentsScreenTabContainerModel();

@override void dispose() { super.dispose(); } 
 }
