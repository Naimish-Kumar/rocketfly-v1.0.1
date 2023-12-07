import '../../../core/app_export.dart';/// This class is used in the [bookmarklist_item_widget] screen.
class BookmarklistItemModel {BookmarklistItemModel({this.bookmark, this.business, this.business1, this.masterYourMindset, this.duration, this.years, this.distance, this.id, }) { bookmark = bookmark  ?? ImageConstant.imgBookmarkOnerror;business = business  ?? "Business";business1 = business1  ?? ImageConstant.imgMaskGroup2;masterYourMindset = masterYourMindset  ?? "Master Your Mindset & Brain: Framestorm Your...";duration = duration  ?? "7-11 Years";years = years  ?? ImageConstant.imgIconGray700;distance = distance  ?? "3h 20m";id = id  ?? ""; }

String? bookmark;

String? business;

String? business1;

String? masterYourMindset;

String? duration;

String? years;

String? distance;

String? id;

 }
