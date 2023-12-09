// import 'package:flutter/material.dart';
// import 'package:rocketfly/core/app_export.dart';
// import 'package:rocketfly/widgets/custom_elevated_button.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// import 'provider/onboarding_screen_two_one_provider.dart';

// class OnboardingScreenTwoOneScreen extends StatefulWidget {
//   const OnboardingScreenTwoOneScreen({Key? key})
//       : super(
//           key: key,
//         );

//   @override
//   OnboardingScreenTwoOneScreenState createState() =>
//       OnboardingScreenTwoOneScreenState();
//   static Widget builder(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context) => OnboardingScreenTwoOneProvider(),
//       child: OnboardingScreenTwoOneScreen(),
//     );
//   }
// }

// class OnboardingScreenTwoOneScreenState
//     extends State<OnboardingScreenTwoOneScreen> {
//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     mediaQueryData = MediaQuery.of(context);

//     return  Scaffold(
//         backgroundColor: theme.colorScheme.primary,
//         body: Container(
//           width: double.maxFinite,
//           padding: EdgeInsets.symmetric(
//             horizontal: 16.h,
//             vertical: 12.v,
//           ),
//           child: Column(
//             children: [
//               Align(
//                 alignment: Alignment.centerRight,
//                 child: Text(
//                   "lbl_skip".tr,
//                   style: CustomTextStyles.titleMediumGray700SemiBold,
//                 ),
//               ),
//               SizedBox(height: 31.v),
//               CustomImageView(
//                 imagePath: ImageConstant.imgMaskGroup343x343,
//                 height: 343.adaptSize,
//                 width: 343.adaptSize,
//               ),
//               SizedBox(height: 29.v),
//               Container(
//                 width: 275.h,
//                 margin: EdgeInsets.symmetric(horizontal: 33.h),
//                 child: Text(
//                   "msg_learn_anytime_and2".tr,
//                   maxLines: 3,
//                   overflow: TextOverflow.ellipsis,
//                   textAlign: TextAlign.center,
//                   style: CustomTextStyles.headlineLargeOnError.copyWith(
//                     height: 1.13,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 29.v),
//               SizedBox(
//                 height: 8.v,
//                 child: AnimatedSmoothIndicator(
//                   activeIndex: 0,
//                   count: 3,
//                   effect: ScrollingDotsEffect(
//                     spacing: 8,
//                     activeDotColor: theme.colorScheme.onSecondaryContainer,
//                     dotColor: theme.colorScheme.onError.withOpacity(0.44),
//                     dotHeight: 8.v,
//                     dotWidth: 8.h,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 5.v),
//             ],
//           ),
//         ),
//         bottomNavigationBar: _buildNextButton(context),
      
//     );
//   }

//   /// Section Widget
//   Widget _buildNextButton(BuildContext context) {
//     return CustomElevatedButton(
//       text: "lbl_next".tr,
//       onPressed: () {
//         Navigator.pushNamed(context, AppRoutes.onboardingScreenThree);
//       },
//       margin: EdgeInsets.only(
//         left: 16.h,
//         right: 16.h,
//         bottom: 50.v,
//       ),
//       buttonStyle: CustomButtonStyles.fillDeepPurpleA,
//       buttonTextStyle: theme.textTheme.titleLarge!,
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';

class OnboardingScreenTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
           Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Skip',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
          CustomImageView(
             fit: BoxFit.contain,
            imagePath: ImageConstant.imgMaskGroup343x343,
            height: 343.adaptSize,
            width: double.maxFinite,
          ),
          SizedBox(height: 30.v),
          Container(
            width: 330.h,
            margin: EdgeInsets.only(
              left: 6.h,
              right: 5.h,
            ),
            child: Text(
              "msg_learn_anytime_and2".tr,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.headlineLargeOnError.copyWith(
                height: 1.13,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
}
