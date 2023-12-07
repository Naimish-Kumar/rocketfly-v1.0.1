import '../../../core/app_export.dart';/// This class is used in the [categories_item_widget] screen.
class CategoriesItemModel {CategoriesItemModel({this.business, this.coursesCounter, this.id, }) { business = business  ?? "Business";coursesCounter = coursesCounter  ?? "120 Courses";id = id  ?? ""; }

String? business;

String? coursesCounter;

String? id;

 }
