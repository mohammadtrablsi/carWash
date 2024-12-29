import 'package:get/get.dart';
import 'package:washme/core/statics/routes.dart';
import 'package:washme/view/auth/login/loginScreen.dart';
import 'package:washme/view/test/test.dart';

import 'view/auth/forgetPassword/forgetPasswordScreen.dart';
import 'view/auth/register/registerScreen.dart';
import 'view/auth/verifyCode/verifyCodeScreen.dart';
import 'view/onBoarding/onBoardingScreen.dart';
import 'view/profile/profileScreen.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
    name: AppRoute.test,
    page: () => Test(),
  ),
  GetPage(
    name: AppRoute.onBoarding,
    page: () => OnBoardingScreen(),
  ),
  GetPage(
    name: AppRoute.login,
    page: () => Loginscreen(),
  ),
  GetPage(
    name: AppRoute.register,
    page: () => Registerscreen(),
  ),
  GetPage(
    name: AppRoute.verifyCode,
    page: () => VerifyCodescreen(),
  ),
  GetPage(
    name: AppRoute.forgetPassword,
    page: () => ForgetPasswordscreen(),
  ),
  GetPage(
    name: AppRoute.profile,
    page: () => ProfileScreen(),
  ),
];
