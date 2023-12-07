import 'models/home_screen_container_model.dart';import 'package:flutter/material.dart';import 'package:rocketfly/core/app_export.dart';import 'package:rocketfly/presentation/home_screen_page/home_screen_page.dart';import 'package:rocketfly/widgets/custom_bottom_bar.dart';import 'provider/home_screen_container_provider.dart';class HomeScreenContainerScreen extends StatefulWidget {const HomeScreenContainerScreen({Key? key}) : super(key: key);

@override HomeScreenContainerScreenState createState() =>  HomeScreenContainerScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => HomeScreenContainerProvider(), child: HomeScreenContainerScreen()); } 
 }

// ignore_for_file: must_be_immutable
class HomeScreenContainerScreenState extends State<HomeScreenContainerScreen> {GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.primary, body: Container(width: double.maxFinite, decoration: AppDecoration.fillPrimary, child: Column(children: [Navigator(key: navigatorKey, initialRoute: AppRoutes.homeScreenPage, onGenerateRoute: (routeSetting) => PageRouteBuilder(pageBuilder: (ctx, ani, ani1) => getCurrentPage(context, routeSetting.name!), transitionDuration: Duration(seconds: 0))), SizedBox(height: 5.v)])), bottomNavigationBar: _buildMyCoursesSection(context))); } 
/// Section Widget
Widget _buildMyCoursesSection(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {}); } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.homeScreenPage: return HomeScreenPage.builder(context); default: return HomeScreenPage.builder(context);} } 
 }
