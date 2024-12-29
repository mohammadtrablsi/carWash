import 'package:get/get.dart';

class CustomMultiDropDownController extends GetxController {
  var selectedValue;
  List<String> items = [];
  List<String> selectedItems = [];
  List<bool> isCheckItem = [];

  void addItem(int index) {
    isCheckItem[index] = !isCheckItem[index];
    if (isCheckItem[index] == true) {
      selectedItems.add(items[index]);
    } else {
      selectedItems.remove(items[index]);
    }
    print(items[index]);
    update();
  }

  void removeItemfromSelected(int index) {
    isCheckItem[index] = !isCheckItem[index];
    selectedItems.remove(items[index]);
    update();
  }

  @override
  void onInit() {
    items = [
      "تويوتا",
      "هوندا",
      "فورد",
      "شيفروليه",
      "بي إم دبليو",
      "مرسيدس-بنز# C",
      "أودي",
      "تسلا",
      "هيونداي - إلنترا",
      "كيا - سورينتو"
    ];
    isCheckItem = List.filled(items.length, false);
    super.onInit();
  }
}
