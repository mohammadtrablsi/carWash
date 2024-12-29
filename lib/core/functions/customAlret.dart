import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:sizer/sizer.dart';
import 'package:washme/core/style/style.dart';

dynamic customAlret(String title, String text, void Function()? onAgreeTap) {
  return Get.defaultDialog(
      title: title,
      middleText: text,
      textConfirm: "موافق",
      textCancel: "إلغاء",
      cancel: cancelButton(() => Get.back()),
      buttonColor: Style.buttonColor,
      onConfirm: onAgreeTap);
}

Widget cancelButton(void Function()? onTap) {
  return InkWell(
    onTap: onTap,
    borderRadius: BorderRadius.circular(20.sp),
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 0.8.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.sp),
          border: Border.all(color: Colors.red, width: 0.6.w)),
      child: Text(
        "إلغاء",
        style: TextStyle(color: Colors.red),
      ),
    ),
  );
}
