import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDropDownlController extends GetxController {
  final List<String> items = [
    "تويوتا - كورولا",
    "هوندا - سيفيك",
    "فورد - موستانج",
    "شيفروليه - كامارو",
    "بي إم دبليو - السلسلة 3",
    "مرسيدس-بنز - الفئة C",
    "أودي - A4",
    "تسلا - موديل 3",
    "هيونداي - إلنترا",
    "كيا - سورينتو"
  ];
  var selectedValue;
  bool isExpanded = false;
  final ExpansionTileController expandedController = ExpansionTileController();

  void onExpansionChanged(expanded) {
    isExpanded = expanded;
    update();
  }

  void chooseItem(item) {
    selectedValue = item;
    expandedController.collapse();
    update();
  }
}
