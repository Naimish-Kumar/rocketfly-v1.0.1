import 'vector1_item_model.dart';import '../../../core/app_export.dart';import 'courses_item_model.dart';import 'mentors_item_model.dart';import 'categories_item_model.dart';class HomeScreenOneTabContainerModel {List<Vector1ItemModel> vector1ItemList = List.generate(1,(index) => Vector1ItemModel());

List<CoursesItemModel> coursesItemList = [CoursesItemModel(bookmark:ImageConstant.imgBookmarkOnprimarycontainer,category: "Business",distance: "3h 20m",masterYourMindset: "Master Your Mindset & Brain: Framestorm Your...",price: "210.00"),CoursesItemModel(bookmark:ImageConstant.imgBookmark,category: "Game Design",distance: "1h 30m",masterYourMindset: "Introduction to Game Localization",price: "65.00"),CoursesItemModel(bookmark:ImageConstant.imgBookmarkOnprimarycontainer,category: "Development",distance: "2h 40m",masterYourMindset: "The Complete 2023 Fullstack Web Develope...",price: "95.00")];

List<MentorsItemModel> mentorsItemList = [MentorsItemModel(jacob: "Jacob"),MentorsItemModel(jacob: "Claire"),MentorsItemModel(jacob: "Priscilla"),MentorsItemModel(jacob: "Wade")];

List<CategoriesItemModel> categoriesItemList = [CategoriesItemModel(business: "Business",coursesCounter: "120 Courses"),CategoriesItemModel(business: "Science",coursesCounter: "266 Courses"),CategoriesItemModel(business: "UI/UX Design",coursesCounter: "144 Courses")];

 }
