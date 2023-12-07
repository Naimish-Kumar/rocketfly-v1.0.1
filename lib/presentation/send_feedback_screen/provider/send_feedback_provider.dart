import 'package:flutter/material.dart';import 'package:rocketfly/core/app_export.dart';import 'package:rocketfly/presentation/send_feedback_screen/models/send_feedback_model.dart';/// A provider class for the SendFeedbackScreen.
///
/// This provider manages the state of the SendFeedbackScreen, including the
/// current sendFeedbackModelObj

// ignore_for_file: must_be_immutable
class SendFeedbackProvider extends ChangeNotifier {TextEditingController writeFeedbackController = TextEditingController();

SendFeedbackModel sendFeedbackModelObj = SendFeedbackModel();

@override void dispose() { super.dispose(); writeFeedbackController.dispose(); } 
 }
