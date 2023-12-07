import 'package:flutter/material.dart';import 'package:rocketfly/core/app_export.dart';import 'package:rocketfly/presentation/chat_screen/models/chat_model.dart';import '../models/chatlist_item_model.dart';/// A provider class for the ChatScreen.
///
/// This provider manages the state of the ChatScreen, including the
/// current chatModelObj

// ignore_for_file: must_be_immutable
class ChatProvider extends ChangeNotifier {ChatModel chatModelObj = ChatModel();

@override void dispose() { super.dispose(); } 
 }
