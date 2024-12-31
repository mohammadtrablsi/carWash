// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/statics/assets.dart';

class HomeController extends GetxController {
  // StatusRequest statusRequest = StatusRequest.none;
  // List<String>photoes=[AppImageAsset.med1,AppImageAsset.med2,AppImageAsset.med3];
  // List<String>images=[AppImageAsset.nan,AppImageAsset.med1,AppImageAsset.med2];
  List<String> photoes = [
    AssetsData.ads1Image,
    AssetsData.ads2Image,
    AssetsData.ads3Image
  ];
  // CollectionReference usersRef = FirebaseFirestore.instance.collection('users');
  // CollectionReference notesRef = FirebaseFirestore.instance.collection('Notes');
  int filterId = 1;
  // var fbm = FirebaseMessaging.instance;
  bool isNeedUpdate = false;
  bool toggleModeValue = false;
  // LocaleController controllerlang = Get.find();
  // MyServices myServices = Get.find();
  late AnimationController animationController;
  int indexOfCarouselSlider = 0;
  bool isDrawerOpen = false;
  late AnimationController animationControllerForDrawer;

  @override
  void onInit() {
    super.onInit();
  }

  void setAnimationControllerForDrawer(
      AnimationController animationControllerForDrawer) {
    this.animationControllerForDrawer = animationControllerForDrawer;
  }

  void iconDrawerOnPressed() {
    if (!isDrawerOpen) {
      animationControllerForDrawer.forward();
    } else {
      animationControllerForDrawer.reverse();
    }
    isDrawerOpen = !isDrawerOpen;
    update();
  }

  void getForFilter(id) {
    filterId = id;
    update();
  }

  void setIndexOfCarouslSlider(int index) {
    indexOfCarouselSlider = index;
    update();
  }

  void checkBox(snapshot, index) async {
    // var documentId = snapshot.data!.docs[index].id;
    // final DocumentReference<Object?> docRef =
    //     FirebaseFirestore.instance.collection('Notes').doc(documentId);
    // if ('${(snapshot.data!.docs[index].data() as Map<String, dynamic>)['isDone']}' ==
    //     "false") {
    //   try {
    //     await docRef.update({
    //       'isDone': "true",
    //     });
    //     print('Document successfully updated');
    //   } catch (error) {
    //     print('Error updating document: ');
    //   }
    // } else {
    //   try {
    //     await docRef.update({
    //       'isDone': "false",
    //     });
    //     print('Document successfully updated');
    //   } catch (error) {
    //     print('Error updating document: ');
    //   }
    // }
  }

  void deleteTask(snapshot, index, doneDocs) async {
    // await FirebaseFirestore.instance
    //     .collection('Notes')
    //     .doc(snapshot.data!.docs[index].id)
    //     .delete();
  }

  logout(value) async {
    // try {
    //   await FirebaseAuth.instance.signOut();
    //   print('User signed out successfully.');
    //   myServices.sharedPreferences.clear();
    //   Get.offAllNamed(AppRoute.login);
    // } catch (e) {
    //   print('Error signing out: $e');
    // }
  }

  void needUpdate(Id) {
    //   if (Id == 1) {
    //     isNeedUpdate = true;
    //     update();
    //   } else {
    //     isNeedUpdate = false;
    //     update();
    //   }
    // }

    // void Dismissed(snapshot, proccessingDocs, doneDocs, index) async {
    //   await FirebaseFirestore.instance
    //       .collection('Notes')
    //       .doc(snapshot.data!.docs[index].id)
    //       .delete();
    //   if (filterId == 1) {
    //     if (snapshot.data!.docs.length <= 1 &&
    //         proccessingDocs.length <= 1 &&
    //         doneDocs.length <= 1) {
    //       needUpdate(1);
    //       update();
    //     } else {
    //       needUpdate(2);
    //       update();
    //     }
    //   } else if (filterId == 2) {
    //     if (snapshot.data!.docs.length <= 1 &&
    //         proccessingDocs.length <= 1 &&
    //         doneDocs.length <= 1) {
    //       needUpdate(1);
    //       update();
    //     } else {
    //       needUpdate(2);
    //       update();
    //     }
    //   } else if (filterId == 3) {
    //     if (snapshot.data!.docs.length <= 1 &&
    //         proccessingDocs.length <= 1 &&
    //         doneDocs.length <= 1) {
    //       needUpdate(1);
    //       update();
    //     } else {
    //       needUpdate(2);
    //       update();
    //     }
    //   }
  }

  // changeMode(BuildContext context) async {
  //   var theme = Theme.of(context);
  //   var darkTheme = Themes.darkTheme;
  //   var lightTheme = Themes.lightTheme;
  //   var brightness = ThemeModelInheritedNotifier.of(context).theme.brightness;
  //   ThemeSwitcher.of(context).changeTheme(
  //     theme: brightness == Brightness.light ? darkTheme : lightTheme,
  //     isReversed: brightness == Brightness.light ? false : true,
  //     // isReversed: false,
  //     // isReversed: true,
  //   );
  //   // await Future.delayed(const Duration(milliseconds: 500));

  //   toggleModeValue =!toggleModeValue;
  //   controllerlang.changetheme(toggleModeValue);
  //   update();
  // }
}
