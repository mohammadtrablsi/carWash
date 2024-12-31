import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ADrawerController extends GetxController {
  int currentIndex = 100;
  List<Map> taps = [
    {'text': 'my points', 'icon': Icons.point_of_sale_outlined,'color':Colors.white},
    {'text': 'notification', 'icon': Icons.notifications,'color':Colors.white},
    {'text': 'orders', 'icon': Icons.online_prediction_rounded,'color':Colors.white},
    {'text': 'feed back', 'icon': Icons.feedback,'color':Colors.white},
    {'text': 'logout', 'icon': Icons.logout,'color':Colors.red.shade400},
  ];

void setCurrentIndex(int index) async {
  currentIndex= index;
  update();
  // await Future.delayed(Duration(milliseconds: 400));
  // update();
}

  // Future<bool> isActive(index)async{
    
  //  return index==currentIndex;
  //  update();
   
  // }
}
