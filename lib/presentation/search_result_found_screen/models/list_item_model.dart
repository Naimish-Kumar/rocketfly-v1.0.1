import '../../../core/app_export.dart';/// This class is used in the [list_item_widget] screen.
class ListItemModel {ListItemModel({this.image, this.bookmark, this.completeBlender, this.duration, this.distance, this.id, }) { image = image  ?? ImageConstant.imgMaskGroup160x240;bookmark = bookmark  ?? ImageConstant.imgBookmarkOnerror;completeBlender = completeBlender  ?? "Complete Blender Creator: Learn 3D Modelling for Beginners...";duration = duration  ?? "7-11 Years";distance = distance  ?? "6h 40m";id = id  ?? ""; }

String? image;

String? bookmark;

String? completeBlender;

String? duration;

String? distance;

String? id;

 }
