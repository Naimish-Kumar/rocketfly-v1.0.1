import 'package:flutter/material.dart';import 'package:rocketfly/presentation/notification_screen_one_screen/models/notification_screen_one_model.dart';/// A provider class for the NotificationScreenOneScreen.
///
/// This provider manages the state of the NotificationScreenOneScreen, including the
/// current notificationScreenOneModelObj

// ignore_for_file: must_be_immutable
class NotificationScreenOneProvider extends ChangeNotifier {NotificationScreenOneModel notificationScreenOneModelObj = NotificationScreenOneModel();

@override void dispose() { super.dispose(); } 
 }
