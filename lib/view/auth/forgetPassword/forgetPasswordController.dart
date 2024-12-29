import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:washme/view/test/test.dart';

class ForgetPasswordController extends GetxController {
  TextEditingController? phoneNumberController;
  TextEditingController? passwordController;
  TextEditingController? newPasswordController;
  GlobalKey<FormState>? formstate;
  bool isPassword = true;
  Map data = {};
  // MyServices myServices = Get.find();
  // StatusRequest statusRequest = StatusRequest.none;
  // ForgetPasswordData ForgetPasswordData = ForgetPasswordData(Get.find());
  // EventDetailsWithoutAuthrizeData eventDetailsWithoutAuthrizeData =
  //     EventDetailsWithoutAuthrizeData(Get.find());

  goToSignup() {
    //Get.offAllNamed(AppRoute.signup);
    Get.offAll(() => Test(),
        curve: Curves.fastLinearToSlowEaseIn,
        duration: const Duration(seconds: 1));
  }

  goToHomePage() {
    //Get.offAllNamed(AppRoute.signup);
    Get.offAll(() => Test(),
        curve: Curves.fastLinearToSlowEaseIn,
        duration: const Duration(seconds: 1));
  }

  void revPassword() {
    isPassword = !isPassword;
    update();
  }

  // ForgetPassword() async {
  //   if (formstate!.currentState!.validate()) {
  //     statusRequest = StatusRequest.loading;
  //     update();
  //     var response = await ForgetPasswordData.ForgetPasswordData(
  //       email!.text,
  //       password!.text,
  //     );
  //     print("=============================== response $response ");
  //     print("=============================== statusRequest $statusRequest ");
  //     statusRequest = handlingData(response);
  //     update();
  //     if (StatusRequest.success == statusRequest) {
  //       data.addAll(response);
  //       if (data["status"] == "success") {
  //         AppLink.token = data["token"];
  //         print(data["isOwner"]);
  //         myServices.sharedPreferences.setString("token", data["token"]);
  //         myServices.sharedPreferences.setInt("isOwner", data["isOwner"]);
  //         myServices.sharedPreferences.setString("name", data['user']["name"]);
  //         myServices.sharedPreferences.setInt("id", data['user']["id"]);
  //         myServices.sharedPreferences
  //             .setString("email", data['user']["email"]);
  //         myServices.sharedPreferences.setInt("auth", 2);
  //         if (myServices.sharedPreferences.getBool('invite') == true) {
  //           acceptEvent();
  //           myServices.sharedPreferences.remove('invite');
  //         }
  //         PusherController controller = Get.put(PusherController());
  //         controller.onInit();
  //         //go to homepage
  //         Get.offAll(const bottomnav());
  //         return Get.snackbar("success",
  //             "Welcolme ${data['user']['name']} \nBy : ${data['user']['email']}",
  //             colorText: Colors.white,
  //             backgroundColor: AppColor.primaryColor,
  //             duration: const Duration(seconds: 3));
  //       } else {
  //         statusRequest = StatusRequest.none;
  //         update();
  //         return Get.snackbar("fail", "The email or password is falut",
  //             colorText: Colors.white,
  //             backgroundColor: Colors.red.withOpacity(0.7),
  //             duration: const Duration(seconds: 3));
  //       }
  //     }
  //   } else if (statusRequest == StatusRequest.offlinefailure) {
  //     Get.snackbar("warning", "you are not online please check on it");
  //   } else if (statusRequest == StatusRequest.serverfailure) {
  //     return Get.snackbar("warning", "Error..");
  //   }
  // }

  // acceptEvent() async {
  //   if (true) {
  //     statusRequest = StatusRequest.loading;
  //     update();
  //     var response = await eventDetailsWithoutAuthrizeData.acceptEventData(
  //       AppLink.token,
  //       DeepLinkController.type,
  //       DeepLinkController.idEvent.toString(),
  //     );
  //     print("=============================== response $response ");
  //     print("=============================== statusRequest $statusRequest ");
  //     statusRequest = handlingData(response);
  //     update();
  //     if (StatusRequest.success == statusRequest) {
  //       data.addAll(response);
  //       if (data["status"] == "success") {
  //         return Get.snackbar("success", "",
  //             colorText: Colors.white,
  //             backgroundColor: AppColor.primaryColor,
  //             duration: const Duration(seconds: 3));
  //       } else {
  //         return Get.snackbar("fail", "",
  //             colorText: Colors.white,
  //             backgroundColor: Colors.red.withOpacity(0.7),
  //             duration: const Duration(seconds: 3));
  //       }
  //     } else if (statusRequest == StatusRequest.offlinefailure) {
  //       return Get.snackbar("warning", "you are not online please check on it");
  //     } else if (statusRequest == StatusRequest.serverfailure) {
  //       return Get.snackbar("warning", "",
  //           backgroundColor: Colors.red.withOpacity(0.7),
  //           colorText: Colors.white);
  //     }
  //   }
  // }

  @override
  void onInit() {
    phoneNumberController = TextEditingController();
    passwordController = TextEditingController();
    newPasswordController=TextEditingController();
    formstate = GlobalKey<FormState>();
    super.onInit();
  }
}
