import '../../../core/app_export.dart';/// This class is used in the [courses_item_widget] screen.
class CoursesItemModel {CoursesItemModel({this.bookmark, this.category, this.distance, this.masterYourMindset, this.price, this.id, }) { bookmark = bookmark  ?? ImageConstant.imgBookmarkOnprimarycontainer;category = category  ?? "Business";distance = distance  ?? "3h 20m";masterYourMindset = masterYourMindset  ?? "Master Your Mindset & Brain: Framestorm Your...";price = price  ?? "210.00";id = id  ?? ""; }

String? bookmark;

String? category;

String? distance;

String? masterYourMindset;

String? price;

String? id;

 }
