import 'package:flutter/material.dart';import 'package:rocketfly/core/app_export.dart';import 'package:rocketfly/presentation/currency_screen/models/currency_model.dart';import '../models/currencylist_item_model.dart';/// A provider class for the CurrencyScreen.
///
/// This provider manages the state of the CurrencyScreen, including the
/// current currencyModelObj

// ignore_for_file: must_be_immutable
class CurrencyProvider extends ChangeNotifier {CurrencyModel currencyModelObj = CurrencyModel();

@override void dispose() { super.dispose(); } 
 }
