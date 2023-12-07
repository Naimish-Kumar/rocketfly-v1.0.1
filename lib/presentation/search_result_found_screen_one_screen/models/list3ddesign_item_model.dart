import '../../../core/app_export.dart';/// This class is used in the [list3ddesign_item_widget] screen.
class List3ddesignItemModel {List3ddesignItemModel({this.bookmark, this.distance, this.completeBlender, this.price, this.id, }) { bookmark = bookmark  ?? ImageConstant.imgButtonBookmark;distance = distance  ?? "6h 40m";completeBlender = completeBlender  ?? "Complete Blender Creator: Learn 3D Modelling for Beginners...";price = price  ?? "210.00";id = id  ?? ""; }

String? bookmark;

String? distance;

String? completeBlender;

String? price;

String? id;

 }
