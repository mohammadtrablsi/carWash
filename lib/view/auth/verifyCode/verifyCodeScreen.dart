import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:washme/core/statics/routes.dart';
import 'package:washme/core/widget/customAppBar.dart';
import 'package:washme/core/widget/customButton.dart';
import 'package:washme/core/widget/customOtp.dart';
import 'package:washme/view/auth/verifyCode/verifyCodeController.dart';

import '../../../core/style/style.dart';

class VerifyCodescreen extends StatelessWidget {
  const VerifyCodescreen({super.key});

  @override
  Widget build(BuildContext context) {
    VerifyCodeController controller = Get.put(VerifyCodeController());
    return Scaffold(
      backgroundColor: Style.screenBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: Style.screenhorizontalPadding),
          child: Column(
            children: [
              CustomAppBar(nameOfScreen: ''),
              SizedBox(
                height: 3.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.w),
                child: text(),
              ),
              SizedBox(
                height: 5.h,
              ),
              CustomOtp(),
              SizedBox(
                height: 5.h,
              ),
              Text(
                'هل تلقيت رمز التحقق؟ 00:59',
                style: TextStyle(
                    fontSize: 15.sp,
                    color: Style.greyColor,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 1.h,
              ),
              customTextButton(),
              SizedBox(
                height: 4.h,
              ),
              CustomButton(
                text: 'التالي',
                onTap: () {
                  Get.toNamed(AppRoute.test);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget text() {
  return Column(
    children: [
      Text(
        'التحقق من الرمز',
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 23.sp,
            color: Colors.black87),
      ),
      SizedBox(
        height: 1.h,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '0997477838',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Style.mainColor,
              fontSize: 16.sp,
            ),
          ),
          Text(
            'الرجاء إدخال الرمز المرسل للرقم ',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Style.greyColor,
              fontSize: 16.sp,
            ),
          ),
        ],
      ),
    ],
  );
}

Widget customTextButton() {
  return InkWell(
    onTap: () {},
    child: Text(
      ' إعادة ارسال الرمز',
      style: TextStyle(
        fontSize: 16.sp,
        color: Colors.black87,
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.underline,
        decorationColor: Colors.black87,
      ),
    ),
  );
}
