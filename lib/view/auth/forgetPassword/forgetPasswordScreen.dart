import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:washme/core/statics/routes.dart';
import 'package:washme/core/widget/customAppBar.dart';
import 'package:washme/core/widget/customButton.dart';
import 'package:washme/view/auth/ForgetPassword/ForgetPasswordController.dart';
import 'package:washme/view/auth/widgets/authHeaderTexts.dart';

import '../../../core/functions/vaildator.dart';
import '../../../core/style/style.dart';
import '../widgets/customAuthTextFormField.dart';

class ForgetPasswordscreen extends StatelessWidget {
  const ForgetPasswordscreen({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordController controller = Get.put(ForgetPasswordController());
    return Scaffold(
      backgroundColor: Style.screenBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: Style.screenhorizontalPadding),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomAppBar(nameOfScreen: ''),
                SizedBox(
                  height: 4.h,
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3.w),
                    child: AuthHeaderTexts(
                        title: 'إعادة تعيين كلمة المرور',
                        text:
                            'اختر كلمة مرور لا يستطيع المخترقون الوصول إليها مهما حاولوا، واجعلها فريدة من نوعها وآمنة')),
                SizedBox(
                  height: 4.h,
                ),
                CustomAuthtextformfield(
                  controller: controller.phoneNumberController,
                  label: 'ادخل رقم هاتفك',
                  obscureText: false,
                  suffixIcon: Icons.search,
                  suffixIconOnPressed: () {},
                  outerText: 'رقم الهاتف',
                ),
                SizedBox(
                  height: 2.h,
                ),
                GetBuilder<ForgetPasswordController>(builder: (controller) {
                  return CustomAuthtextformfield(
                    controller: controller.passwordController,
                    vaildator: (val) {
                      return vaildator(val!, 1, 100, ValidatorType.password);
                    },
                    haveSuffixIcon: true,
                    label: 'ادخل كلمة مرورك',
                    obscureText: controller.isPassword ? true : false,
                    suffixIcon: controller.isPassword
                        ? Icons.visibility
                        : Icons.visibility_off,
                    suffixIconOnPressed: () {
                      controller.revPassword();
                    },
                    outerText: 'كلمة المرور',
                  );
                }),
                SizedBox(
                  height: 2.h,
                ),
                GetBuilder<ForgetPasswordController>(builder: (controller) {
                  return CustomAuthtextformfield(
                    controller: controller.newPasswordController,
                    vaildator: (val) {
                      return vaildator(val!, 1, 100, ValidatorType.password);
                    },
                    haveSuffixIcon: true,
                    label: 'ادخل كلمة المرور الجديدة',
                    obscureText: controller.isPassword ? true : false,
                    suffixIcon: controller.isPassword
                        ? Icons.visibility
                        : Icons.visibility_off,
                    suffixIconOnPressed: () {
                      controller.revPassword();
                    },
                    outerText: 'كلمة المرور الجديدة',
                  );
                }),
                SizedBox(
                  height: 6.h,
                ),
                CustomButton(
                  text: 'التالي',
                  onTap: () {
                    Get.toNamed(AppRoute.verifyCode);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
