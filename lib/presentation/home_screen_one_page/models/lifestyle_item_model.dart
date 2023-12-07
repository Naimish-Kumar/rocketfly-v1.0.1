import '../../../core/app_export.dart';/// This class is used in the [lifestyle_item_widget] screen.
class LifestyleItemModel {LifestyleItemModel({this.bookmark, this.distance, this.makeUpForBeginners, this.price, this.id, }) { bookmark = bookmark  ?? ImageConstant.imgButtonBookmark;distance = distance  ?? "6h 40m";makeUpForBeginners = makeUpForBeginners  ?? "Make-up for Beginners: learn doing make-up like a Pro";price = price  ?? "210.00";id = id  ?? ""; }

String? bookmark;

String? distance;

String? makeUpForBeginners;

String? price;

String? id;

 }
