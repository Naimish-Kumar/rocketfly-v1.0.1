import '../../../core/app_export.dart';/// This class is used in the [designlist_item_widget] screen.
class DesignlistItemModel {DesignlistItemModel({this.image, this.bookmark, this.id, }) { image = image  ?? ImageConstant.imgMaskGroup7;bookmark = bookmark  ?? ImageConstant.imgBookmark;id = id  ?? ""; }

String? image;

String? bookmark;

String? id;

 }
