import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:washme/core/style/style.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
    required this.title,
    required this.des,
    this.onTap,
  });
  final String title;
  final String des;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: Style.screenhorizontalPadding),
      decoration: BoxDecoration(
          // color: Style.mainColor,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12.sp),
              bottomRight: Radius.circular(12.sp))),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 2.h),
            child: Row(
              children: [text(), const Spacer(), icon()],
            ),
          ),
          // line()
        ],
      ),
    );
  }

  Widget icon() {
    return InkWell(
      borderRadius: BorderRadius.circular(15.sp),
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(1.5.w),
        decoration: BoxDecoration(
            // border: Border.all(
            //   width: 0.3.w,
            //   color: Colors.grey,
            // ),
            color: Style.greyColor.withOpacity(0.15),
            borderRadius: BorderRadius.circular(15.sp)),
        child: Icon(
          Icons.notifications_none,
          size: 22.sp,
          color: Colors.grey,
        ),
      ),
    );
  }

  Widget line() {
    return Container(
      height: 0.15.h,
      width: 100.w,
      color: Colors.grey.withOpacity(0.7),
    );
  }

  Widget text() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 22.sp,
            fontWeight: FontWeight.w900,
          ),
        ),
        SizedBox(
          height: 0.7.h,
        ),
        Padding(
          padding: EdgeInsetsDirectional.only(start: 3.w),
          child: Text(
            des,
            style: TextStyle(fontSize: 16.2.sp, color: Style.greyColor),
          ),
        ),
      ],
    );
  }
}
