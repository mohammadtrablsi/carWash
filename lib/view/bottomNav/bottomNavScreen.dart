import 'dart:ffi';
import 'dart:math';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:washme/core/style/style.dart';

import 'bottomNavController.dart';

class BottomNavScreen extends StatelessWidget {
  const BottomNavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(BottomNavcontroller());
    return GetBuilder<BottomNavcontroller>(builder: (controller1) {
      return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Style.mainColor,
          index: controller1.PageIndex,
          items: controller1.iconList,
          onTap: (index) {
            controller1.setPageIndex(index);
          },
        ),
        body: controller1.Listpage.elementAt(controller1.PageIndex),
      );
    });
  }
}
