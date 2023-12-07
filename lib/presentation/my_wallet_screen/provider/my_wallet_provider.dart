import 'package:flutter/material.dart';import 'package:rocketfly/presentation/my_wallet_screen/models/my_wallet_model.dart';/// A provider class for the MyWalletScreen.
///
/// This provider manages the state of the MyWalletScreen, including the
/// current myWalletModelObj

// ignore_for_file: must_be_immutable
class MyWalletProvider extends ChangeNotifier {TextEditingController amountController = TextEditingController();

MyWalletModel myWalletModelObj = MyWalletModel();

@override void dispose() { super.dispose(); amountController.dispose(); } 
 }
