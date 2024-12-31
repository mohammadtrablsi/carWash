import 'package:get/get.dart';
import 'package:washme/core/statics/assets.dart';

class HomeController extends GetxController {
  List<String> photoes = [
    AssetsData.ads1Image,
    AssetsData.ads2Image,
    AssetsData.ads3Image
  ];
  int indexOfCarouselSlider = 0;
  void setIndexOfCarouslSlider(int index) {
    indexOfCarouselSlider = index;
    update();
  }
}
