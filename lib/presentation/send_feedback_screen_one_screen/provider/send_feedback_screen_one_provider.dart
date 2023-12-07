import 'package:flutter/material.dart';import 'package:rocketfly/presentation/send_feedback_screen_one_screen/models/send_feedback_screen_one_model.dart';/// A provider class for the SendFeedbackScreenOneScreen.
///
/// This provider manages the state of the SendFeedbackScreenOneScreen, including the
/// current sendFeedbackScreenOneModelObj

// ignore_for_file: must_be_immutable
class SendFeedbackScreenOneProvider extends ChangeNotifier {TextEditingController writeFeedbackController = TextEditingController();

SendFeedbackScreenOneModel sendFeedbackScreenOneModelObj = SendFeedbackScreenOneModel();

@override void dispose() { super.dispose(); writeFeedbackController.dispose(); } 
 }
