import '../../../core/app_export.dart';/// This class is used in the [businesslist_item_widget] screen.
class BusinesslistItemModel {BusinesslistItemModel({this.business, this.business1, this.coursesCounter, this.id, }) { business = business  ?? ImageConstant.imgMaskGroup100x140;business1 = business1  ?? "Business";coursesCounter = coursesCounter  ?? "120 Courses";id = id  ?? ""; }

String? business;

String? business1;

String? coursesCounter;

String? id;

 }
