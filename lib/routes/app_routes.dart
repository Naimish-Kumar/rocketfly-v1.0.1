import 'package:flutter/material.dart';
import 'package:rocketfly/presentation/splash_screen_one_screen/splash_screen_one_screen.dart';
import 'package:rocketfly/presentation/let_s_you_in_screen/let_s_you_in_screen.dart';
import 'package:rocketfly/presentation/sign_in_screen_one_screen/sign_in_screen_one_screen.dart';
import 'package:rocketfly/presentation/sign_up_screen_one_screen/sign_up_screen_one_screen.dart';
import 'package:rocketfly/presentation/forget_password_screen_one_screen/forget_password_screen_one_screen.dart';
import 'package:rocketfly/presentation/reset_password_screen/reset_password_screen.dart';
import 'package:rocketfly/presentation/preferred_language_screen/preferred_language_screen.dart';
import 'package:rocketfly/presentation/search_no_result_found_screen/search_no_result_found_screen.dart';
import 'package:rocketfly/presentation/search_result_found_screen/search_result_found_screen.dart';
import 'package:rocketfly/presentation/single_course_lesson_screen_tab_container_screen/single_course_lesson_screen_tab_container_screen.dart';
import 'package:rocketfly/presentation/single_course_review_screen_tab_container_screen/single_course_review_screen_tab_container_screen.dart';
import 'package:rocketfly/presentation/reviews_screen/reviews_screen.dart';
import 'package:rocketfly/presentation/apply_coupon_screen/apply_coupon_screen.dart';
import 'package:rocketfly/presentation/subscription_successful_screen/subscription_successful_screen.dart';
import 'package:rocketfly/presentation/subscription_not_successful_screen/subscription_not_successful_screen.dart';
import 'package:rocketfly/presentation/notification_screen/notification_screen.dart';
import 'package:rocketfly/presentation/bookmark_screen/bookmark_screen.dart';
import 'package:rocketfly/presentation/single_courses_ongoing_screen/single_courses_ongoing_screen.dart';
import 'package:rocketfly/presentation/my_courses_completed_screen_tab_container_screen/my_courses_completed_screen_tab_container_screen.dart';
import 'package:rocketfly/presentation/single_courses_complete_lessons_screen_tab_container_screen/single_courses_complete_lessons_screen_tab_container_screen.dart';
import 'package:rocketfly/presentation/complete_course_rating_screen/complete_course_rating_screen.dart';
import 'package:rocketfly/presentation/profile_screen/profile_screen.dart';
import 'package:rocketfly/presentation/profile_edit_screen/profile_edit_screen.dart';
import 'package:rocketfly/presentation/setting_screen/setting_screen.dart';
import 'package:rocketfly/presentation/notification1_screen/notification1_screen.dart';
import 'package:rocketfly/presentation/language_screen/language_screen.dart';
import 'package:rocketfly/presentation/about_us_screen/about_us_screen.dart';
import 'package:rocketfly/presentation/privacy_policy_screen/privacy_policy_screen.dart';
import 'package:rocketfly/presentation/faqs_screen/faqs_screen.dart';
import 'package:rocketfly/presentation/send_feedback_screen/send_feedback_screen.dart';
import 'package:rocketfly/presentation/category_screen/category_screen.dart';
import 'package:rocketfly/presentation/trending_courses_screen/trending_courses_screen.dart';
import 'package:rocketfly/presentation/filter_screen/filter_screen.dart';
import 'package:rocketfly/presentation/new_release_courses_screen/new_release_courses_screen.dart';
import 'package:rocketfly/presentation/verify_phone_number_screen/verify_phone_number_screen.dart';
import 'package:rocketfly/presentation/notification_allow_screen/notification_allow_screen.dart';
import 'package:rocketfly/presentation/primary_goal_screen/primary_goal_screen.dart';
import 'package:rocketfly/presentation/spend_learning_screen/spend_learning_screen.dart';
import 'package:rocketfly/presentation/choose_interests_screen/choose_interests_screen.dart';
import 'package:rocketfly/presentation/select_courses_screen/select_courses_screen.dart';
import 'package:rocketfly/presentation/home_screen_one_tab_container_screen/home_screen_one_tab_container_screen.dart';
import 'package:rocketfly/presentation/search_screen/search_screen.dart';
import 'package:rocketfly/presentation/trending_courses_screen_one_screen/trending_courses_screen_one_screen.dart';
import 'package:rocketfly/presentation/filter_screen_one_screen/filter_screen_one_screen.dart';
import 'package:rocketfly/presentation/new_release_courses_screen_one_screen/new_release_courses_screen_one_screen.dart';
import 'package:rocketfly/presentation/mentors_screen/mentors_screen.dart';
import 'package:rocketfly/presentation/single_mentor_students_screen_tab_container_screen/single_mentor_students_screen_tab_container_screen.dart';
import 'package:rocketfly/presentation/reviews_screen_one_screen/reviews_screen_one_screen.dart';
import 'package:rocketfly/presentation/checkout_screen/checkout_screen.dart';
import 'package:rocketfly/presentation/apply_coupon_screen_one_screen/apply_coupon_screen_one_screen.dart';
import 'package:rocketfly/presentation/payment_method_apple_pay_screen/payment_method_apple_pay_screen.dart';
import 'package:rocketfly/presentation/payment_method_g_pay_screen/payment_method_g_pay_screen.dart';
import 'package:rocketfly/presentation/payment_method_visa_pay_screen/payment_method_visa_pay_screen.dart';
import 'package:rocketfly/presentation/payment_method_paypal_screen/payment_method_paypal_screen.dart';
import 'package:rocketfly/presentation/payment_method_amazon_pay_screen/payment_method_amazon_pay_screen.dart';
import 'package:rocketfly/presentation/payment_successful_screen/payment_successful_screen.dart';
import 'package:rocketfly/presentation/payment_not_successful_screen/payment_not_successful_screen.dart';
import 'package:rocketfly/presentation/single_chat_screen/single_chat_screen.dart';
import 'package:rocketfly/presentation/profile_screen_one_screen/profile_screen_one_screen.dart';
import 'package:rocketfly/presentation/profile_edit_screen_one_screen/profile_edit_screen_one_screen.dart';
import 'package:rocketfly/presentation/notification_screen_one1_screen/notification_screen_one1_screen.dart';
import 'package:rocketfly/presentation/currency_screen/currency_screen.dart';
import 'package:rocketfly/presentation/privacy_policy_screen_one_screen/privacy_policy_screen_one_screen.dart';

class AppRoutes {
  static const String splashScreenOneScreen = '/splash_screen_one_screen';

  static const String onboardingScreenOne =
      '/onboarding_screen_one_one_screen';

  static const String onboardingScreenTwo =
      '/onboarding_screen_two_one_screen';

  static const String onboardingScreenThree =
      '/onboarding_screen_three_one_screen';

  static const String letSYouInScreen = '/let_s_you_in_screen';

  static const String signInScreen = '/sign_in_screen_';

  static const String signUpScreenOneScreen = '/sign_up_screen_one_screen';

  static const String forgetPasswordScreenOneScreen =
      '/forget_password_screen_one_screen';

  static const String verifyPhoneNumberScreen = '/verify_phone_number_screen';

  static const String resetPasswordScreen = '/reset_password_screen';

  static const String preferredLanguageScreen = '/preferred_language_screen';

  static const String homeScreenPage = '/home_screen_page';

  static const String homeScreenContainerScreen =
      '/home_screen_container_screen';

  static const String searchNoResultFoundScreen =
      '/search_no_result_found_screen';

  static const String searchResultFoundScreen = '/search_result_found_screen';

  static const String singleCourseDescriptionScreenPage =
      '/single_course_description_screen_page';

  static const String singleCourseLessonScreenPage =
      '/single_course_lesson_screen_page';

  static const String singleCourseLessonScreenTabContainerScreen =
      '/single_course_lesson_screen_tab_container_screen';

  static const String singleCourseReviewScreenPage =
      '/single_course_review_screen_page';

  static const String singleCourseReviewScreenTabContainerScreen =
      '/single_course_review_screen_tab_container_screen';

  static const String reviewsScreen = '/reviews_screen';

  static const String applyCouponScreen = '/apply_coupon_screen';

  static const String subscriptionSuccessfulScreen =
      '/subscription_successful_screen';

  static const String subscriptionNotSuccessfulScreen =
      '/subscription_not_successful_screen';

  static const String notificationScreen = '/notification_screen';

  static const String bookmarkScreen = '/bookmark_screen';

  static const String myCoursesOngoingScreenPage =
      '/my_courses_ongoing_screen_page';

  static const String singleCoursesOngoingScreen =
      '/single_courses_ongoing_screen';

  static const String myCoursesCompletedScreenPage =
      '/my_courses_completed_screen_page';

  static const String myCoursesCompletedScreenTabContainerScreen =
      '/my_courses_completed_screen_tab_container_screen';

  static const String singleCoursesCompleteLessonsScreenPage =
      '/single_courses_complete_lessons_screen_page';

  static const String singleCoursesCompleteLessonsScreenTabContainerScreen =
      '/single_courses_complete_lessons_screen_tab_container_screen';

  static const String singleCoursesCompleteCertificateScreenPage =
      '/single_courses_complete_certificate_screen_page';

  static const String completeCourseRatingScreen =
      '/complete_course_rating_screen';

  static const String profileScreen = '/profile_screen';

  static const String profileEditScreen = '/profile_edit_screen';

  static const String settingScreen = '/setting_screen';

  static const String notification1Screen = '/notification1_screen';

  static const String languageScreen = '/language_screen';

  static const String aboutUsScreen = '/about_us_screen';

  static const String privacyPolicyScreen = '/privacy_policy_screen';

  static const String faqsScreen = '/faqs_screen';

  static const String sendFeedbackScreen = '/send_feedback_screen';

  static const String categoryScreen = '/category_screen';

  static const String trendingCoursesScreen = '/trending_courses_screen';

  static const String filterScreen = '/filter_screen';

  static const String newReleaseCoursesScreen = '/new_release_courses_screen';

  static const String splashScreen = '/splash_screen';

  static const String onboardingScreenOneScreen =
      '/onboarding_screen_one_screen';

  static const String onboardingScreenTwoScreen =
      '/onboarding_screen_two_screen';

  static const String onboardingScreenThreeScreen =
      '/onboarding_screen_three_screen';

  static const String letSYouInScreenOneScreen =
      '/let_s_you_in_screen_one_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String forgetPasswordScreen = '/forget_password_screen';

  static const String checkYourMailScreen = '/check_your_mail_screen';



  static const String verifyPhoneNumberScreenOneScreen =
      '/verify_phone_number_screen_one_screen';

  static const String notificationAllowScreen = '/notification_allow_screen';

  static const String preferredLanguageScreenOneScreen =
      '/preferred_language_screen_one_screen';

  static const String primaryGoalScreen = '/primary_goal_screen';

  static const String spendLearningScreen = '/spend_learning_screen';

  static const String chooseInterestsScreen = '/choose_interests_screen';

  static const String selectCoursesScreen = '/select_courses_screen';

  static const String homeScreenOnePage = '/home_screen_one_page';

  static const String homeScreenOneTabContainerScreen =
      '/home_screen_one_tab_container_screen';

  static const String searchScreen = '/search_screen';

  static const String searchNoResultFoundScreenOneScreen =
      '/search_no_result_found_screen_one_screen';

  static const String searchResultFoundScreenOneScreen =
      '/search_result_found_screen_one_screen';

  static const String searchResultFoundFilterScreen =
      '/search_result_found_filter_screen';

  static const String categoryScreenOneScreen = '/category_screen_one_screen';

  static const String trendingCoursesScreenOneScreen =
      '/trending_courses_screen_one_screen';
  static const String filterScreenOneScreen = '/filter_screen_one_screen';
  static const String newReleaseCoursesScreenOneScreen =
      '/new_release_courses_screen_one_screen';
  static const String mentorsScreen = '/mentors_screen';
  static const String singleMentorCoursesScreenPage =
      '/single_mentor_courses_screen_page';
  static const String singleMentorStudentsScreenPage =
      '/single_mentor_students_screen_page';
  static const String singleMentorStudentsScreenTabContainerScreen =
      '/single_mentor_students_screen_tab_container_screen';
  static const String singleMentorReviewsScreenPage =
      '/single_mentor_reviews_screen_page';
  static const String singleCourseDescriptionScreenOnePage =
      '/single_course_description_screen_one_page';
  static const String singleCourseLessonScreenOnePage =
      '/single_course_lesson_screen_one_page';
  static const String singleCourseReviewScreenOnePage =
      '/single_course_review_screen_one_page';
  static const String reviewsScreenOneScreen = '/reviews_screen_one_screen';
  static const String checkoutScreen = '/checkout_screen';
  static const String applyCouponScreenOneScreen =
      '/apply_coupon_screen_one_screen';
  static const String paymentMethodApplePayScreen =
      '/payment_method_apple_pay_screen';
  static const String paymentMethodGPayScreen = '/payment_method_g_pay_screen';
  static const String paymentMethodVisaPayScreen =
      '/payment_method_visa_pay_screen';
  static const String paymentMethodPaypalScreen =
      '/payment_method_paypal_screen';
  static const String paymentMethodAmazonPayScreen =
      '/payment_method_amazon_pay_screen';
  static const String paymentSuccessfulScreen = '/payment_successful_screen';
  static const String paymentNotSuccessfulScreen =
      '/payment_not_successful_screen';
  static const String notificationScreenOneScreen =
      '/notification_screen_one_screen';
  static const String bookmarkScreenOneScreen = '/bookmark_screen_one_screen';
  static const String myCoursesOngoingScreenOnePage =
      '/my_courses_ongoing_screen_one_page';
  static const String singleCoursesOngoingScreenOneScreen =
      '/single_courses_ongoing_screen_one_screen';
  static const String myCoursesCompletedScreenOnePage =
      '/my_courses_completed_screen_one_page';
  static const String singleCoursesCompleteLessonsScreenOnePage =
      '/single_courses_complete_lessons_screen_one_page';
  static const String singleCoursesCompleteCertificateScreenOnePage =
      '/single_courses_complete_certificate_screen_one_page';
  static const String completeCourseRatingScreenOneScreen =
      '/complete_course_rating_screen_one_screen';
  static const String chatScreen = '/chat_screen';
  static const String singleChatScreen = '/single_chat_screen';
  static const String profileScreenOneScreen = '/profile_screen_one_screen';
  static const String profileEditScreenOneScreen =
      '/profile_edit_screen_one_screen';
  static const String myWalletScreen = '/my_wallet_screen';
  static const String settingScreenOneScreen = '/setting_screen_one_screen';
  static const String notificationScreenOne1Screen =
      '/notification_screen_one1_screen';
  static const String languageScreenOneScreen = '/language_screen_one_screen';
  static const String currencyScreen = '/currency_screen';
  static const String aboutUsScreenOneScreen = '/about_us_screen_one_screen';
  static const String privacyPolicyScreenOneScreen =
      '/privacy_policy_screen_one_screen';
  static const String faqsScreenOneScreen = '/faqs_screen_one_screen';
  static const String sendFeedbackScreenOneScreen =
      '/send_feedback_screen_one_screen';
  static const String appNavigationScreen = '/app_navigation_screen';
  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashScreenOneScreen: SplashScreenOneScreen.builder,
        letSYouInScreen: LetSYouInScreen.builder,
        signInScreen: SignInScreenOneScreen.builder,
        signUpScreenOneScreen: SignUpScreenOneScreen.builder,
        forgetPasswordScreenOneScreen: ForgetPasswordScreenOneScreen.builder,
        resetPasswordScreen: ResetPasswordScreen.builder,
        preferredLanguageScreen: PreferredLanguageScreen.builder,
        searchNoResultFoundScreen: SearchNoResultFoundScreen.builder,
        searchResultFoundScreen: SearchResultFoundScreen.builder,
        singleCourseLessonScreenTabContainerScreen:
            SingleCourseLessonScreenTabContainerScreen.builder,
        singleCourseReviewScreenTabContainerScreen:
            SingleCourseReviewScreenTabContainerScreen.builder,
        reviewsScreen: ReviewsScreen.builder,
        applyCouponScreen: ApplyCouponScreen.builder,
        subscriptionSuccessfulScreen: SubscriptionSuccessfulScreen.builder,
        subscriptionNotSuccessfulScreen:
            SubscriptionNotSuccessfulScreen.builder,
        notificationScreen: NotificationScreen.builder,
        bookmarkScreen: BookmarkScreen.builder,
        singleCoursesOngoingScreen: SingleCoursesOngoingScreen.builder,
        myCoursesCompletedScreenTabContainerScreen:
            MyCoursesCompletedScreenTabContainerScreen.builder,
        singleCoursesCompleteLessonsScreenTabContainerScreen:
            SingleCoursesCompleteLessonsScreenTabContainerScreen.builder,
        completeCourseRatingScreen: CompleteCourseRatingScreen.builder,
        profileScreen: ProfileScreen.builder,
        profileEditScreen: ProfileEditScreen.builder,
        settingScreen: SettingScreen.builder,
        notification1Screen: Notification1Screen.builder,
        languageScreen: LanguageScreen.builder,
        aboutUsScreen: AboutUsScreen.builder,
        privacyPolicyScreen: PrivacyPolicyScreen.builder,
        faqsScreen: FaqsScreen.builder,
        sendFeedbackScreen: SendFeedbackScreen.builder,
        categoryScreen: CategoryScreen.builder,
        trendingCoursesScreen: TrendingCoursesScreen.builder,
        filterScreen: FilterScreen.builder,
        newReleaseCoursesScreen: NewReleaseCoursesScreen.builder,
        verifyPhoneNumberScreenOneScreen:
            VerifyPhoneNumberScreen.builder,
        notificationAllowScreen: NotificationAllowScreen.builder,
        primaryGoalScreen: PrimaryGoalScreen.builder,
        spendLearningScreen: SpendLearningScreen.builder,
        chooseInterestsScreen: ChooseInterestsScreen.builder,
        selectCoursesScreen: SelectCoursesScreen.builder,
        homeScreenOneTabContainerScreen:
            HomeScreenOneTabContainerScreen.builder,
        searchScreen: SearchScreen.builder,

        trendingCoursesScreenOneScreen: TrendingCoursesScreenOneScreen.builder,
        filterScreenOneScreen: FilterScreenOneScreen.builder,
        newReleaseCoursesScreenOneScreen:
            NewReleaseCoursesScreenOneScreen.builder,
        mentorsScreen: MentorsScreen.builder,
        singleMentorStudentsScreenTabContainerScreen:
            SingleMentorStudentsScreenTabContainerScreen.builder,
        reviewsScreenOneScreen: ReviewsScreenOneScreen.builder,
        checkoutScreen: CheckoutScreen.builder,
        applyCouponScreenOneScreen: ApplyCouponScreenOneScreen.builder,
        paymentMethodApplePayScreen: PaymentMethodApplePayScreen.builder,
        paymentMethodGPayScreen: PaymentMethodGPayScreen.builder,
        paymentMethodVisaPayScreen: PaymentMethodVisaPayScreen.builder,
        paymentMethodPaypalScreen: PaymentMethodPaypalScreen.builder,
        paymentMethodAmazonPayScreen: PaymentMethodAmazonPayScreen.builder,
        paymentSuccessfulScreen: PaymentSuccessfulScreen.builder,
        paymentNotSuccessfulScreen: PaymentNotSuccessfulScreen.builder,
        singleChatScreen: SingleChatScreen.builder,
        profileScreenOneScreen: ProfileScreenOneScreen.builder,
        profileEditScreenOneScreen: ProfileEditScreenOneScreen.builder,
        notificationScreenOne1Screen: NotificationScreenOne1Screen.builder,
        currencyScreen: CurrencyScreen.builder,
        privacyPolicyScreenOneScreen: PrivacyPolicyScreenOneScreen.builder,
        initialRoute: SplashScreenOneScreen.builder
      };
}
