import '../../../core/app_export.dart';/// This class is used in the [thecompletelist_item_widget] screen.
class ThecompletelistItemModel {ThecompletelistItemModel({this.image, this.theComplete, this.distance, this.oneHundred, this.id, }) { image = image  ?? ImageConstant.imgMaskGroup80x80;theComplete = theComplete  ?? "The Complete 2023 Web Development...";distance = distance  ?? "2h 30m";oneHundred = oneHundred  ?? "100%";id = id  ?? ""; }

String? image;

String? theComplete;

String? distance;

String? oneHundred;

String? id;

 }
