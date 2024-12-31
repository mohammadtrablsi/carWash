import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:washme/core/style/style.dart';

class AnimatedOnePoint extends StatelessWidget {
  const AnimatedOnePoint(
      {super.key, required this.arrangement, required this.indexPage});
  final int arrangement;
  final int indexPage;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      padding: EdgeInsetsDirectional.only(
        start: 2.w,
        end: 2.w,
      ),
      height: indexPage == arrangement ? 0.5.h : 1.h,
      width: indexPage == arrangement ? 8.w : 2.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(360),
        color: indexPage == arrangement ? Style.mainColor : Style.greyColor,
      ),
      duration: const Duration(milliseconds: 1000),
    );
  }
}
