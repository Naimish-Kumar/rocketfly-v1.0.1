import 'package:flutter/material.dart';
import 'package:rocketfly/presentation/bookmark_screen/models/bookmark_model.dart';

/// A provider class for the BookmarkScreen.
///
/// This provider manages the state of the BookmarkScreen, including the
/// current bookmarkModelObj

// ignore_for_file: must_be_immutable
class BookmarkProvider extends ChangeNotifier {
  BookmarkModel bookmarkModelObj = BookmarkModel();

  @override
  void dispose() {
    super.dispose();
  }
}
