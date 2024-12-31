import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:washme/core/statics/assets.dart';

import '../../core/style/style.dart';
import 'aDrawer/buttonInDrawer.dart';
import 'aDrawer/rowInADrawer.dart';
import 'aDrawerController.dart';

class ADrawer extends StatelessWidget {
  const ADrawer({super.key, required this.cancelOnPressed});

  final void Function() cancelOnPressed;
  @override
  Widget build(BuildContext context) {
    Get.put(ADrawerController());
    return Scaffold(
      body: Container(
        width: 70.w,
        height: double.infinity,
        color: Style.mainColor, //const Color(0xFF17203A)
        child: Padding(
          padding: EdgeInsetsDirectional.only(
              // start: AppMargin.ScreenMargin / 2,
              top: 11.h), //8
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: EdgeInsetsDirectional.only(
                  start: Style.screenhorizontalPadding / 3),
              child: RowInADrawer(
                name: "pharmsy pharmsy pha rms ",
                image: AssetsData.ads1Image,
                cancelOnPressed: cancelOnPressed,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(start: 10.w),
              child: Text(
                "BROWSE",
                style: TextStyle(color: Colors.white, fontSize: 12.sp),
              ),
            ),
            SizedBox(height: 2.h),
            GetBuilder<ADrawerController>(builder: (controller) {
              return Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: controller.taps.length,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return ButtonInDrawer(
                      index: index,
                      currentIndex: controller.currentIndex,
                      taps: controller.taps,
                      onTap: () {
                        controller.setCurrentIndex(index);
                      },
                    );
                  },
                ),
              );
            }),
          ]),
        ),
      ),
    );
  }
}
