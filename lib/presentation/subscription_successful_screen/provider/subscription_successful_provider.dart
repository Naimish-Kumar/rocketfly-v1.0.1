import 'package:flutter/material.dart';import 'package:rocketfly/presentation/subscription_successful_screen/models/subscription_successful_model.dart';/// A provider class for the SubscriptionSuccessfulScreen.
///
/// This provider manages the state of the SubscriptionSuccessfulScreen, including the
/// current subscriptionSuccessfulModelObj

// ignore_for_file: must_be_immutable
class SubscriptionSuccessfulProvider extends ChangeNotifier {SubscriptionSuccessfulModel subscriptionSuccessfulModelObj = SubscriptionSuccessfulModel();

@override void dispose() { super.dispose(); } 
 }
