import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:sizer/sizer.dart';
import 'package:washme/core/statics/assets.dart';
import 'package:washme/core/widget/customAppBar.dart';
import 'package:washme/core/widget/customStatusRaw.dart';
import 'package:washme/view/home/homeController.dart';
import 'package:washme/view/home/widgets/homeAppBar.dart';

import '../../core/style/style.dart';
import 'widgets/carouselSliderWidgets/carouselSliderPart.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return Scaffold(
      backgroundColor: Style.screenBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: Style.screenhorizontalPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeAppBar(
                title: 'Clean Master',
                des: 'Wash ,rinse ,shine',
                onTap: () {},
              ),
              text(),
              bookCar(),
              const Spacer(),
              text(),
              SizedBox(width: 70.w, child: CustomStatusRow(numState: 2)),
              text(),
              GetBuilder<HomeController>(
                  builder: (controller) => CarouselSliderPart(
                        photoes: controller.photoes,
                        indexOfCarouselSlider: controller.indexOfCarouselSlider,
                        setIndexOfCarouslSlider:
                            controller.setIndexOfCarouslSlider,
                      )),
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget text() {
  return Text(
    'Services',
    style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
  );
}

Widget bookCar() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
    height: 20.h,
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15.sp),
      color: Style.mainColor,
    ),
    child: Row(
      children: [
        Container(
          height: 15.h,
          width: 15.h,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AssetsData.carWashForHome1Image),
                  fit: BoxFit.cover)),
        ),
        const Spacer(),
        Column(
          children: [
            Text(
              'Book',
              style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
            Text(
              'Wash',
              style: TextStyle(
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.sp)),
                child: Text(
                  'Book wash',
                  style: TextStyle(
                    color: Style.mainColor,
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    ),
  );
}
