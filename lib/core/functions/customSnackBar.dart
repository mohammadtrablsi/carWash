import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

dynamic customSnackBar(String title, String message) {
  return Get.snackbar(
    title,
    message,
    duration: const Duration(seconds: 3),
  );
}
