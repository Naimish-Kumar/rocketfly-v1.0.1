import '../../../core/app_export.dart';import 'businesslist_item_model.dart';import 'vector_item_model.dart';import 'bookmarklist_item_model.dart';class HomeScreenModel {List<BusinesslistItemModel> businesslistItemList = [BusinesslistItemModel(business:ImageConstant.imgMaskGroup100x140,business1: "Business",coursesCounter: "120 Courses"),BusinesslistItemModel(business:ImageConstant.imgMaskGroup2,business1: "Science",coursesCounter: "266 Courses")];

List<VectorItemModel> vectorItemList = List.generate(1,(index) => VectorItemModel());

List<BookmarklistItemModel> bookmarklistItemList = [BookmarklistItemModel(bookmark:ImageConstant.imgBookmarkOnerror,business: "Business",business1:ImageConstant.imgMaskGroup2,masterYourMindset: "Master Your Mindset & Brain: Framestorm Your...",duration: "7-11 Years",years:ImageConstant.imgIconGray700,distance: "3h 20m"),BookmarklistItemModel(bookmark:ImageConstant.imgBookmark,business: "Game Design",business1:ImageConstant.imgMaskGroup100x140,masterYourMindset: "Introduction to Game Localization",duration: "12-15 Years",years:ImageConstant.imgIconGray700,distance: "1h 30m")];

 }
