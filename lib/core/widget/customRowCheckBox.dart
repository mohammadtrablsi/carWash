import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../style/style.dart';

class CustomRowcheckbox extends StatelessWidget {
  const CustomRowcheckbox({super.key, required this.text, required this.isChecked, this.onTap});
  final String text;
  final bool isChecked;
  final void Function()?  onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 17.sp,
          ),
        ),
        const Spacer(),
        InkWell(
          borderRadius: BorderRadius.circular(50.sp),
          child: outercircle(isChecked),
          onTap: onTap,
        ),
      ],
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
