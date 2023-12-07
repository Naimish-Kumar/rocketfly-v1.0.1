import 'package:flutter/material.dart';
import 'package:rocketfly/presentation/notification_allow_screen/models/notification_allow_model.dart';

/// A provider class for the NotificationAllowScreen.
///
/// This provider manages the state of the NotificationAllowScreen, including the
/// current notificationAllowModelObj
class NotificationAllowProvider extends ChangeNotifier {
  NotificationAllowModel notificationAllowModelObj = NotificationAllowModel();

  @override
  void dispose() {
    super.dispose();
  }
}
