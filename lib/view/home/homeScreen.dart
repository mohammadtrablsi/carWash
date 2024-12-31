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
    // Get.find(HomeController());
    HomeController controller = Get.find();
    return Scaffold(
      backgroundColor: Style.screenBackgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Style.screenhorizontalPadding),
              child: HomeAppBar(
                title: 'Clean Master',
                des: 'غسيل, تنظيف ,تلميع',
                onTap: () {
                  controller.iconDrawerOnPressed();
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Style.screenhorizontalPadding),
              child: text('خدماتنا'),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Style.screenhorizontalPadding),
              child: bookCar(),
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Style.screenhorizontalPadding),
              child: text('حالة اخر طلب'),
            ),
            SizedBox(
              height: 1.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Style.screenhorizontalPadding),
              child: SizedBox(width: 70.w, child: CustomStatusRow(numState: 2)),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Style.screenhorizontalPadding),
              child: SizedBox(width: 75.w, child: textUnderRowStatus()),
            ),
            SizedBox(
              height: 2.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Style.screenhorizontalPadding),
              child: text('عروضنا'),
            ),
            SizedBox(
              height: 1.h,
            ),
            GetBuilder<HomeController>(
                builder: (controller) => CarouselSliderPart(
                      photoes: controller.photoes,
                      indexOfCarouselSlider: controller.indexOfCarouselSlider,
                      setIndexOfCarouslSlider:
                          controller.setIndexOfCarouslSlider,
                    )),
            SizedBox(
              height: 3.h,
            ),
          ],
        ),
      ),
    );
  }
}

Widget text(String text) {
  return Text(
    text,
    style: TextStyle(fontSize: 19.5.sp, fontWeight: FontWeight.bold),
  );
}

Widget textUnderRowStatus() {
  return Row(
    children: [
      Text(
        'موافق',
        style: TextStyle(fontWeight: FontWeight.w500),
      ),
      SizedBox(
        width: 8.w,
      ),
      Text('في الطريق', style: TextStyle(fontWeight: FontWeight.w500)),
      SizedBox(
        width: 10.7.w,
      ),
      Text('بدأ', style: TextStyle(fontWeight: FontWeight.w500)),
      SizedBox(
        width: 15.w,
      ),
      Text('انتهى', style: TextStyle(fontWeight: FontWeight.w500))
    ],
  );
}

Widget bookCar() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
    // height: 20.h,
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
              'احجز',
              style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
            Text(
              'غسلة',
              style: TextStyle(
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 0.5.h),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.sp)),
                child: Text(
                  'احجز غسلة الان',
                  style: TextStyle(
                    fontSize: 17.5.sp,
                    color: Style.mainColor,
                    fontWeight: FontWeight.bold,
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
