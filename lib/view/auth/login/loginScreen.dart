import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:washme/core/functions/vaildator.dart';
import 'package:washme/core/statics/routes.dart';
import 'package:washme/core/widget/customButton.dart';
import 'package:washme/view/auth/widgets/authTextButton.dart';
import 'package:washme/view/auth/widgets/switchAuthPrompt.dart';
import 'package:washme/view/auth/login/loginController.dart';

import '../../../core/style/style.dart';
import '../widgets/customAuthTextFormField.dart';
import '../widgets/authHeaderTexts.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    LoginController controller = Get.put(LoginController());
    return Scaffold(
      backgroundColor: Style.screenBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: Style.screenhorizontalPadding),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 13.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: AuthHeaderTexts(
                    title: 'تسجيل الدخول',
                    text:
                        'سجّل الدخول الآن لتجربة مميزة واستفد من خدماتنا المصممة خصيصًا لتلبية احتياجاتك',
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                CustomAuthtextformfield(
                  controller: controller.phoneNumberController,
                  vaildator: (val) {
                    return vaildator(val!, 1, 100, ValidatorType.phone);
                  },
                  label: 'ادخل رقم هاتفك',
                  obscureText: false,
                  suffixIcon: Icons.search,
                  suffixIconOnPressed: () {},
                  outerText: 'رقم الهاتف',
                ),
                SizedBox(
                  height: 2.h,
                ),
                GetBuilder<LoginController>(builder: (controller) {
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
                  height: 1.h,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 2.w,
                    ),
                    AuthTextButton(
                        text: 'هل نسيت كلمة مرورك؟',
                        onTap: () {
                          Get.toNamed(AppRoute.forgetPassword);
                        },
                        fontSize: 16.sp),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                CustomButton(
                  text: 'سجل الان',
                  onTap: () {
                    Get.toNamed(AppRoute.bottomNav);
                  },
                ),
                SizedBox(
                  height: 1.h,
                ),
                SwitchAuthprompt(
                  textForTextButton: 'انشئ حساب',
                  text: 'ليس لديك حساب؟',
                  onTap: () {
                    Get.toNamed(AppRoute.register);
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
