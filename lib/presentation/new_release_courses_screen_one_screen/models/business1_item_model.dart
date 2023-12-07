import '../../../core/app_export.dart';/// This class is used in the [business1_item_widget] screen.
class Business1ItemModel {Business1ItemModel({this.bookmark, this.distance, this.masterYourMindset, this.price, this.id, }) { bookmark = bookmark  ?? ImageConstant.imgBookmarkOnprimarycontainer;distance = distance  ?? "3h 20m";masterYourMindset = masterYourMindset  ?? "Master Your Mindset & Brain: Framestorm Your...";price = price  ?? "210.00";id = id  ?? ""; }

String? bookmark;

String? distance;

String? masterYourMindset;

String? price;

String? id;

 }
