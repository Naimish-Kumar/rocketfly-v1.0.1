import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'provider/app_navigation_provider.dart';

class AppNavigationScreen extends StatefulWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AppNavigationScreenState createState() => AppNavigationScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppNavigationProvider(),
      child: AppNavigationScreen(),
    );
  }
}

class AppNavigationScreenState extends State<AppNavigationScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "01_Splash Screen One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashScreenOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "02_Onboarding Screen One One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.onboardingScreenOne),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "03_Onboarding Screen Two One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.onboardingScreenTwo),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "04_Onboarding Screen Three One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.onboardingScreenThree),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "05_Let\\'s You In Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.letSYouInScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "06_Sign In Screen One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signInScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "07_Sign Up Screen One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpScreenOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "08_Forget Password Screen One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.forgetPasswordScreenOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "11_Verify Phone Number Screen".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.verifyPhoneNumberScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "10_Reset Password Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.resetPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "13_Preferred Language Screen".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.preferredLanguageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "18_Home Screen - Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.homeScreenContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "20_Search - No Result Found Screen".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.searchNoResultFoundScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "21_Search - Result Found Screen".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.searchResultFoundScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "32_Single Course - Lesson Screen - Tab Container"
                                  .tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .singleCourseLessonScreenTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "33_Single Course - Review Screen - Tab Container"
                                  .tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .singleCourseReviewScreenTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "34_Reviews Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.reviewsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "36_Apply Coupon Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.applyCouponScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "42_Subscription Successful Screen".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.subscriptionSuccessfulScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "43_Subscription Not Successful Screen".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.subscriptionNotSuccessfulScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "44_Notification Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.notificationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "45_Bookmark Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.bookmarkScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "47_Single Courses - Ongoing Screen".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.singleCoursesOngoingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "48_My Courses - Completed Screen - Tab Container"
                                  .tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .myCoursesCompletedScreenTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "49_Single Courses - Complete Lessons Screen - Tab Container"
                                  .tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .singleCoursesCompleteLessonsScreenTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "51_Complete Course Rating Screen".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.completeCourseRatingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "54_Profile Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "55_Profile Edit Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profileEditScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "57_Setting Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.settingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "58_Notification Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.notification1Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "59_Language Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.languageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "61_About Us Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.aboutUsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "62_Privacy Policy Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.privacyPolicyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "63_FAQs Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.faqsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "64_Send Feedback Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.sendFeedbackScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "23_Category Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.categoryScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "24_Trending Courses Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.trendingCoursesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "25_Filter Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.filterScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "26_New Release Courses Screen".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.newReleaseCoursesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "01_Splash Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "02_Onboarding Screen One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.onboardingScreenOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "03_Onboarding Screen Two".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.onboardingScreenTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "04_Onboarding Screen Three".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.onboardingScreenThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "05_Let\\'s You In Screen One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.letSYouInScreenOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "06_Sign In Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signInScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "07_Sign Up Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "08_Forget Password Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.forgetPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "09_Check Your Mail screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.checkYourMailScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "11_Verify Phone Number Screen One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.verifyPhoneNumberScreenOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "12_Notification Allow Screen".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.notificationAllowScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "13_Preferred Language Screen One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.preferredLanguageScreenOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "14_Primary Goal Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.primaryGoalScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "15_Spend Learning Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.spendLearningScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "16_Choose Interests Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.chooseInterestsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "17_Select Courses Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.selectCoursesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "18_Home Screen One - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.homeScreenOneTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "19_Search Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.searchScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "20_Search - No Result Found Screen One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.searchNoResultFoundScreenOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "21_Search - Result Found Screen One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.searchResultFoundScreenOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "22_Search - Result Found Filter Screen".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.searchResultFoundFilterScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "23_Category Screen One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.categoryScreenOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "24_Trending Courses Screen One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.trendingCoursesScreenOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "25_Filter Screen One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.filterScreenOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "26_New Release Courses Screen One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.newReleaseCoursesScreenOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "27_Mentors Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.mentorsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "29_Single Mentor - Students Screen - Tab Container"
                                  .tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .singleMentorStudentsScreenTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "34_Reviews Screen One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.reviewsScreenOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "35_Checkout Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.checkoutScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "36_Apply Coupon Screen One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.applyCouponScreenOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "37_Payment Method - Apple Pay Screen".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.paymentMethodApplePayScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "38_Payment Method - G Pay Screen".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.paymentMethodGPayScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "39_Payment Method - Visa Pay Screen".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.paymentMethodVisaPayScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "40_Payment Method - PayPal Screen".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.paymentMethodPaypalScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "41_Payment Method - Amazon Pay Screen".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.paymentMethodAmazonPayScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "42_Payment Successful Screen".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.paymentSuccessfulScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "43_Payment Not Successful Screen".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.paymentNotSuccessfulScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "44_Notification Screen One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.notificationScreenOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "45_Bookmark Screen One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.bookmarkScreenOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "47_Single Courses - Ongoing Screen One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.singleCoursesOngoingScreenOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "51_Complete Course Rating Screen One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.completeCourseRatingScreenOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "52_Chat Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.chatScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "53_Single Chat Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.singleChatScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "54_Profile Screen One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.profileScreenOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "55_Profile Edit Screen One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.profileEditScreenOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "56_My Wallet Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.myWalletScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "57_Setting Screen One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.settingScreenOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "58_Notification Screen One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.notificationScreenOne1Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "59_Language Screen One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.languageScreenOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "60_Currency Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.currencyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "61_About Us Screen One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.aboutUsScreenOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "62_Privacy Policy Screen One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.privacyPolicyScreenOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "63_FAQs Screen One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.faqsScreenOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "64_Send Feedback Screen One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.sendFeedbackScreenOneScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
