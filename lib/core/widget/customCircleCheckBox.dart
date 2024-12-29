import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../style/style.dart';

class CustomCirclecheckbox extends StatelessWidget {
  const CustomCirclecheckbox({super.key, required this.isChecked, this.onTap});
  final bool isChecked;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(50.sp),
      onTap: onTap,
      child: outercircle(isChecked),
    );
  }
}

Widget outercircle(bool isChecked) {
  return Container(
    height: 5.5.w,
    width: 5.5.w,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(50.sp),
      border: Border.all(
          color: isChecked ? Style.mainColor : Colors.grey, width: 0.4.w),
    ),
    child: Center(
      child: isChecked ? innercircle() : const SizedBox(),
    ),
  );
}

Widget innercircle() {
  return Container(
    height: 3.w,
    width: 3.w,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.sp), color: Style.mainColor),
  );
}
