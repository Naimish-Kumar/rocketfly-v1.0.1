import '../../../core/app_export.dart';/// This class is used in the [two_item_widget] screen.
class TwoItemModel {TwoItemModel({this.image, this.two, this.courses, this.id, }) { image = image  ?? ImageConstant.imgArrowRightDeepPurpleA100;two = two  ?? "2";courses = courses  ?? "Courses";id = id  ?? ""; }

String? image;

String? two;

String? courses;

String? id;

 }
