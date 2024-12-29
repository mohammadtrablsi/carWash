import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:washme/core/statics/routes.dart';
import 'package:washme/core/widget/customMultiDropDown/customMultiDropDown.dart.dart';

import '../../core/functions/customAlret.dart';
import '../../core/style/style.dart';
import '../../core/widget/customAppBar.dart';
import '../auth/widgets/customAuthTextFormField.dart';
import '../../core/widget/customButton.dart';
import '../../core/widget/customDropDown/customDropDown.dart';
import '../../core/functions/customSnackBar.dart';
import '../../core/widget/customStatusRaw.dart';

class Test extends StatefulWidget {
  Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  TextEditingController controller = TextEditingController();

  var selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFfcfcfc),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // SizedBox(
                //   height: 7.h,
                // ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: Style.screenhorizontalPadding),
                  child: const CustomAppBar(nameOfScreen: 'اضف سيارة'),
                ),
                SizedBox(
                  height: 7.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: CustomAuthtextformfield(
                    controller: controller,
                    label: 'اضف سيارة',
                    obscureText: false,
                    suffixIcon: Icons.search,
                    suffixIconOnPressed: () {},
                    outerText: '',
                  ),
                ),
                SizedBox(
                  height: 7.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: CustomStatusRow(
                    numState: 3,
                  ),
                ),
                SizedBox(
                  height: 7.h,
                ),
                CustomButton(
                  text: 'اضف سيارة',
                  onTap: () => customAlret('تحذير',
                      'إدارة الوقت مهارة حيوية تؤثر على جميع جوانب حياتنا. في عالمنا السريع اليوم، يصبح تنظيم الوقت بشكل فعال أكثر أهمية من أي وقت مضى.',
                      () {
                    Get.back();
                    // customSnackBar('title', 'hello my friend');
                    // await Future.delayed(const Duration(seconds: 5));
                    Get.toNamed(AppRoute.profile);
                  }),
                ),
                SizedBox(
                  height: 7.h,
                ),
                CustomMultiDropDown(),
                SizedBox(
                  height: 7.h,
                ),
                CustomDropDown(),
              ],
            ),
          ),
        ));
  }
}
