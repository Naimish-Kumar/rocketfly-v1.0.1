import 'package:flutter/material.dart';import 'package:rocketfly/presentation/subscription_not_successful_screen/models/subscription_not_successful_model.dart';/// A provider class for the SubscriptionNotSuccessfulScreen.
///
/// This provider manages the state of the SubscriptionNotSuccessfulScreen, including the
/// current subscriptionNotSuccessfulModelObj

// ignore_for_file: must_be_immutable
class SubscriptionNotSuccessfulProvider extends ChangeNotifier {SubscriptionNotSuccessfulModel subscriptionNotSuccessfulModelObj = SubscriptionNotSuccessfulModel();

@override void dispose() { super.dispose(); } 
 }
