import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:washme/core/statics/routes.dart';
import 'package:washme/core/widget/customButton.dart';
import 'package:washme/view/auth/widgets/authHeaderTexts.dart';
import 'package:washme/view/auth/widgets/switchAuthPrompt.dart';
import 'package:washme/view/auth/register/registerController.dart';
import 'package:washme/view/auth/register/widgets/agreeOnTerms.dart';

import '../../../core/functions/vaildator.dart';
import '../../../core/style/style.dart';
import '../widgets/customAuthTextFormField.dart';


class Registerscreen extends StatelessWidget {
  const Registerscreen({super.key});

  @override
  Widget build(BuildContext context) {
    RegisterController controller = Get.put(RegisterController());
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
                  height: 5.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: AuthHeaderTexts(
                      title: 'انشئ حساب',
                      text:
                          'ادخل معلوماتك ادناه لتتمكن من الحصول على خدماتنا المصممة خصيصًا لتلبية احتياجاتك'),
                ),
                SizedBox(
                  height: 4.h,
                ),
                CustomAuthtextformfield(
                  controller: controller.nameController,
                  vaildator: (val) {
                    return vaildator(val!, 1, 100, ValidatorType.username);
                  },
                  label: 'يجب ان يكون الاسم صحيحا',
                  obscureText: false,
                  suffixIcon: Icons.search,
                  suffixIconOnPressed: () {},
                  outerText: 'الاسم',
                ),
                SizedBox(
                  height: 2.h,
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
                GetBuilder<RegisterController>(builder: (controller) {
                  return CustomAuthtextformfield(
                    controller: controller.passwordController,
                    vaildator: (val) {
                      return vaildator(val!, 1, 100, ValidatorType.password);
                    },
                    haveSuffixIcon: true,
                    label: 'ادخل كلمة مرور قوية',
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
                GetBuilder<RegisterController>(builder: (controller) {
                  return CustomAuthtextformfield(
                    controller: controller.confirmPasswordController,
                    vaildator: (val) {
                      return vaildatorRepeatPassword(
                          val!, controller.passwordController);
                    },
                    haveSuffixIcon: true,
                    label: 'اعد ادخال كلمة مرورك',
                    obscureText: controller.isConfirmPassword ? true : false,
                    suffixIcon: controller.isConfirmPassword
                        ? Icons.visibility
                        : Icons.visibility_off,
                    suffixIconOnPressed: () {
                      controller.revConfirmPassword();
                    },
                    outerText: 'تحقق كلمة مرور',
                  );
                }),
                SizedBox(
                  height: 1.5.h,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(end: 1.w),
                  child: GetBuilder<RegisterController>(builder: (controller) {
                    return AgreeOnTerms(
                      isChecked: controller.isAgreeOnTerms ? true : false,
                      text: 'موافق على',
                      textForTextButton: 'السياسة والشروط',
                      onTap: () {
                        controller.revTerms();
                      },
                    );
                  }),
                ),
                SizedBox(
                  height: 5.h,
                ),
                CustomButton(
                  text: 'انشئ الان',
                  onTap: () {
                    Get.toNamed(AppRoute.verifyCode);
                  },
                ),
                SizedBox(
                  height: 1.h,
                ),
                SwitchAuthprompt(
                  textForTextButton: 'تسجيل الدخول',
                  text: 'هل لديك حساب بالفعل؟',
                  onTap: () {
                    Get.toNamed(AppRoute.login);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
