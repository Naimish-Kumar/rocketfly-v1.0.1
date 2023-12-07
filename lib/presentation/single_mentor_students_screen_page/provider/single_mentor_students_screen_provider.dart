import 'package:flutter/material.dart';import 'package:rocketfly/presentation/single_mentor_students_screen_page/models/single_mentor_students_screen_model.dart';/// A provider class for the SingleMentorStudentsScreenPage.
///
/// This provider manages the state of the SingleMentorStudentsScreenPage, including the
/// current singleMentorStudentsScreenModelObj

// ignore_for_file: must_be_immutable
class SingleMentorStudentsScreenProvider extends ChangeNotifier {SingleMentorStudentsScreenModel singleMentorStudentsScreenModelObj = SingleMentorStudentsScreenModel();

@override void dispose() { super.dispose(); } 
 }
