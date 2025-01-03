import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'buttonInOnBoarding.dart';

class OnBoardingButtonsPart extends StatelessWidget {
  const OnBoardingButtonsPart(
      {super.key,
      required this.text,
      this.transport,
      this.goToRegister,
      this.skip,
      required this.index});
  final String text;
  final void Function()? transport;
  final void Function()? goToRegister;
  final void Function()? skip;
  final index;

  @override
  Widget build(BuildContext context) {
    return index == 2
        ? Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: ButtonInOnBoarding(
              text: "ابدأ الان",
              onPressed: goToRegister,
              isChildText: true,
              paddingVertical: 4.w,
              paddingHorizontal: 0.w,
              widthOfButton: double.infinity,
              isButtonBig: true,
            ),
          )
        : Container(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Row(
              children: [
                ButtonInOnBoarding(
                  text: "تخطي",
                  onPressed: skip,
                  isChildText: true,
                  paddingVertical: 4.w,
                  paddingHorizontal: 11.w,
                  isButtonBig: false,
                ),
                const Spacer(),
                ButtonInOnBoarding(
                  text: "التالي",
                  onPressed: transport,
                  isChildText: false,
                  paddingVertical: 3.3.w,
                  paddingHorizontal: 9.w,
                  icon: Icons.arrow_forward,
                  isButtonBig: false,
                ),
              ],
            ),
          );
  }
}
