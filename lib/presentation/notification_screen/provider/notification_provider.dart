import 'package:flutter/material.dart';import 'package:rocketfly/core/app_export.dart';import 'package:rocketfly/presentation/notification_screen/models/notification_model.dart';import '../models/barbaramichelalist_item_model.dart';/// A provider class for the NotificationScreen.
///
/// This provider manages the state of the NotificationScreen, including the
/// current notificationModelObj

// ignore_for_file: must_be_immutable
class NotificationProvider extends ChangeNotifier {NotificationModel notificationModelObj = NotificationModel();

@override void dispose() { super.dispose(); } 
 }
