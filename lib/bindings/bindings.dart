import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yiyi_heike/controller/ddos_controller.dart';
import 'package:yiyi_heike/controller/menu_controller.dart';

class MainPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HeikeMenuController());
    Get.put(DDOSController());
  }
}
