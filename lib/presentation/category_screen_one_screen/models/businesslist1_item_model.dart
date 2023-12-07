import 'business_item_model.dart';
import '../../../core/app_export.dart';

/// This class is used in the [businesslist1_item_widget] screen.
class Businesslist1ItemModel {
  Businesslist1ItemModel({
    this.businessItemList,
    this.id, required String business, required String coursesCounter, required String science, required String coursesCounter1, required String development, required String coursesCounter2, required String financeAccounting, required String coursesCounter3, required String iTSoftware, required String coursesCounter4, required String officeProductivity, required String coursesCounter5, required String personalDevelopment, required String coursesCounter6, required String design, required String coursesCounter7,
  }) {
    businessItemList = businessItemList ??
        [
          BusinessItemModel(
              business: "Business", coursesCounter: "120 Courses"),
          BusinessItemModel(business: "Science", coursesCounter: "266 Courses"),
          BusinessItemModel(
              business: "Development", coursesCounter: "266 Courses"),
          BusinessItemModel(
              business: "Finance & Accounting", coursesCounter: "132 Courses"),
          BusinessItemModel(
              business: "IT & Software", coursesCounter: "356 Courses"),
          BusinessItemModel(
              business: "Office Productivity", coursesCounter: "82 Courses"),
          BusinessItemModel(
              business: "Personal Development", coursesCounter: "94 Courses"),
          BusinessItemModel(business: "Design", coursesCounter: "182 Courses")
        ];
    id = id ?? "";
  }

  List<BusinessItemModel>? businessItemList;

  String? id;
}
