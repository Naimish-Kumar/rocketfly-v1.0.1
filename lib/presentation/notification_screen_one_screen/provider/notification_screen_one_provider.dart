import 'package:flutter/material.dart';import 'package:rocketfly/core/app_export.dart';import 'package:rocketfly/presentation/notification_screen_one_screen/models/notification_screen_one_model.dart';import '../models/barbaramichelalist1_item_model.dart';/// A provider class for the NotificationScreenOneScreen.
///
/// This provider manages the state of the NotificationScreenOneScreen, including the
/// current notificationScreenOneModelObj

// ignore_for_file: must_be_immutable
class NotificationScreenOneProvider extends ChangeNotifier {NotificationScreenOneModel notificationScreenOneModelObj = NotificationScreenOneModel();

@override void dispose() { super.dispose(); } 
 }
