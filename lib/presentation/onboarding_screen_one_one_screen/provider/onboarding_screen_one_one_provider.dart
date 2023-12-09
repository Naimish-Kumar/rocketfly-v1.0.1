import 'package:flutter/material.dart';
import 'package:rocketfly/presentation/onboarding_screen_one_one_screen/models/onboarding_screen_one_one_model.dart';

/// A provider class for the OnboardingScreenOneOneScreen.
///
/// This provider manages the state of the OnboardingScreenOneOneScreen, including the
/// current onboardingScreenOneOneModelObj
class OnboardingScreenOneOneProvider extends ChangeNotifier {
  OnboardingScreenOneOneModel onboardingScreenOneOneModelObj =
      OnboardingScreenOneOneModel();
      final PageController _pageController = PageController();
  int _activePage = 0;
  final List<Map<String, dynamic>> _pages = [
    {
      'color': '#ffe24e',
      'title': 'Hmmm, Healthy food',
      'image': 'assets/images/image1.png',
      'description':
          "A variety of foods made by the best chef. Ingredients are easy to find, all delicious flavors can only be found at cookbunda",
      'skip': true
    },
    {
      'color': '#a3e4f1',
      'title': 'Fresh Drinks, Stay Fresh',
      'image': 'assets/images/image2.png',
      'description':
          'Not all food, we provide clear healthy drink options for you. Fresh taste always accompanies you',
      'skip': true
    },
    {
      'color': '#31b77a',
      'title': 'Let\'s Cooking',
      'image': 'assets/images/image3.png',
      'description':
          'Are you ready to make a dish for your friends or family? create an account and cooks',
      'skip': false
    },
  ];
  
}
