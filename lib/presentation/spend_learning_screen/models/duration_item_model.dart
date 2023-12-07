import '../../../core/app_export.dart';/// This class is used in the [duration_item_widget] screen.
class DurationItemModel {DurationItemModel({this.duration, this.casualMinutes, this.id, }) { duration = duration  ?? "Casual (5 Minutes)";casualMinutes = casualMinutes  ?? ImageConstant.imgIconErrorcontainer;id = id  ?? ""; }

String? duration;

String? casualMinutes;

String? id;

 }
