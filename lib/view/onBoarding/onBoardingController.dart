import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/statics/assets.dart';

class Onboardingcontroller extends GetxController {
  List data = [
    {
      'image': AssetsData.onBoarding1Image,
      'text': "مرحبًا بك في تطبيق غسيل السيارات، نحن \n متحمسون لخدمتك!",
      'heightOfImage': 36
    },
    {
      'image': AssetsData.onBoarding2Image,
      'text': "هنا يمكنك طلب غسيل سيارتك بسهولة \n وتتبع الطلب مباشرة.",
      'heightOfImage': 32
    },
    {
      'image': AssetsData.onBoarding3Image,
      'text': "دعنا نبدأ الآن ونوفر لك \n تجربة مميزة في غسيل السيارات!",
      'heightOfImage': 36
    }
  ];
  var indexPage = 0;
  PageController pageController = PageController();

  setIndex(value) {
    indexPage = value;
    update();
  }

  transport() {
    indexPage++;
    pageController.animateToPage(indexPage,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
    update();
  }

  skip() {
    indexPage = 2;
    pageController.animateToPage(indexPage,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
