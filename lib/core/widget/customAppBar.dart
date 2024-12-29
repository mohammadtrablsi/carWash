import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.nameOfScreen});
  final String nameOfScreen;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 2.h),
          child: Stack(
            alignment: Alignment.centerRight,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    nameOfScreen,
                    style:
                        TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w900),
                  ),
                ],
              ),
              icon()
            ],
          ),
        ),
        // line()
      ],
    );
  }

  Widget icon() {
    return InkWell(
      borderRadius: BorderRadius.circular(50.sp),
      onTap: () => Get.back(),
      child: Container(
        padding: EdgeInsets.all(2.w),
        decoration: BoxDecoration(
            border: Border.all(
              width: 0.3.w,
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(50.sp)),
        child: Icon(
          Icons.arrow_forward_ios,
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
}
