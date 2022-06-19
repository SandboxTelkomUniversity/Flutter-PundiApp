import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  RxBool dontChange = false.obs;
  Widget? currentScreen;
  Rx<int> currentIndex = 0.obs;

  void changeIndex(int cIndex) {
    currentIndex.value = cIndex;
  }
}
