import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:washme/view/home/homeScreen.dart';
import 'package:washme/view/test/test.dart';

class BottomNavcontroller extends GetxController {
  late AnimationController animationController;
  late Animation animation;
  late Animation animationScall;
  // LoginData loginData = LoginData(Get.find());
  // StatusRequest statusRequest = StatusRequest.none;
  bool lang = false;
  bool isPressed = true;
  bool? switchValue = false;
  bool isOwner = false;
  TextEditingController password = TextEditingController();
  int PageIndex = 1;
  List<Widget> Listpage = [];
  List<Widget> iconList = const [
    // FaIcon(FontAwesomeIcons., size: 30),

    Icon(Icons.watch_later_outlined, size: 30),
    Icon(Icons.home_outlined, size: 30),
    Icon(Icons.person_2_outlined, size: 30),
  ];
  bool isDrawerOpen = false;

  void setPageIndex(int index) {
    PageIndex = index;
    update();
  }

  @override
  void onInit() {
    Listpage = [
      Test(),
      const HomeScreen(),
      Test(),
    ];
    super.onInit();
  }
}
