import 'package:flutter/material.dart';import 'package:rocketfly/core/app_export.dart';import 'package:rocketfly/presentation/bookmark_screen_one_screen/models/bookmark_screen_one_model.dart';import '../models/threeddesignlist1_item_model.dart';/// A provider class for the BookmarkScreenOneScreen.
///
/// This provider manages the state of the BookmarkScreenOneScreen, including the
/// current bookmarkScreenOneModelObj

// ignore_for_file: must_be_immutable
class BookmarkScreenOneProvider extends ChangeNotifier {BookmarkScreenOneModel bookmarkScreenOneModelObj = BookmarkScreenOneModel();

@override void dispose() { super.dispose(); } 
 }
