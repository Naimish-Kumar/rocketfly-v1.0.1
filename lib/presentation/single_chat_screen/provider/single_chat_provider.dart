import 'package:flutter/material.dart';import 'package:rocketfly/core/app_export.dart';import 'package:rocketfly/presentation/single_chat_screen/models/single_chat_model.dart';/// A provider class for the SingleChatScreen.
///
/// This provider manages the state of the SingleChatScreen, including the
/// current singleChatModelObj

// ignore_for_file: must_be_immutable
class SingleChatProvider extends ChangeNotifier {TextEditingController inputFieldController = TextEditingController();

SingleChatModel singleChatModelObj = SingleChatModel();

@override void dispose() { super.dispose(); inputFieldController.dispose(); } 
 }
