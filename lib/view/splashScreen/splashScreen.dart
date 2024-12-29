import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:washme/core/statics/routes.dart';

import '../../core/statics/assets.dart';
import '../../core/style/style.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animcontroller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    animcontroller = AnimationController(
        duration: const Duration(seconds: 200), vsync: this);
    animation = Tween<double>(begin: 1, end: 1000).animate(animcontroller)
      ..addListener(() {
        setState(() {});
      });
    wait();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Stack(
        children: [
          SpinKitRing(
            color: Style.mainColor,
            size: 120.0,
            lineWidth: 4,
          ),
          Transform.scale(
            scale: animation.value,
            child: Center(
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Style.mainColor,
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),
          ),
          Hero(
            tag: "logo",
            child: Center(
              child: Image.asset(
                AssetsData.logo,
                height: 100,
                width: 100,
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    animcontroller.dispose();
    super.dispose();
  }

  void wait() async {
    await Future.delayed(const Duration(seconds: 3));
    animcontroller.forward();
    await Future.delayed(const Duration(seconds: 2)).then((_) async {
      // bool isLogined = prefs?.getBool('isLogined') ?? false;
      // if (!isLogined) {
      //   AppRouter.router.go(AppRouter.kOnBoardingRoute);
      // } else {
      //   AppRouter.router.go(AppRouter.kHomeRoute);
      // }
      Get.toNamed(AppRoute.onBoarding);
    });
  }
}