import '../../../core/app_export.dart';/// This class is used in the [review_item_widget] screen.
class ReviewItemModel {ReviewItemModel({this.all, this.isSelected, }) { all = all  ?? "All";isSelected = isSelected  ?? false; }

String? all;

bool? isSelected;

 }
