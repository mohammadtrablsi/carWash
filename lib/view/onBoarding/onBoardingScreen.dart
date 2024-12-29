import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:washme/core/statics/routes.dart';
import 'package:washme/view/onBoarding/onBoardingController.dart';

import 'widgets/animatedPoints.dart';
import 'widgets/onBoardingButtonPart.dart';
import 'widgets/pageInOnBoarding.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(Onboardingcontroller());
    return Scaffold(
      backgroundColor: Colors.white,
      body: GetBuilder<Onboardingcontroller>(
        builder: (controller) {
          return Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: PageView(
                    onPageChanged: ((value) {
                      controller.setIndex(value);
                    }),
                    controller: controller.pageController,
                    children: List.generate(
                      3,
                      (index) => PageInOnBoarding(
                        image: controller.data[index]['image'],
                        text: controller.data[index]['text'],
                        heightOfImage: controller.data[index]['heightOfImage'],
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 2.h,
                    ),
                    AnimatedPoints(
                      indexPage: controller.indexPage,
                    ),
                    SizedBox(
                      height: 7.h,
                    ),
                    OnBoardingButtonsPart(
                      text: 'استمر',
                      transport: () {
                        controller.transport();
                      },
                      index: controller.indexPage,
                      goToRegister: () => Get.toNamed(AppRoute.register),
                      skip: () => Get.toNamed(AppRoute.register),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
