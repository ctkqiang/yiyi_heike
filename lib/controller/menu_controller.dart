import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yiyi_heike/model/menu.dart';

class HeikeMenuController extends GetxController {
  static HeikeMenuController get to => Get.put(HeikeMenuController());

  HeikeMenuController() {}

  var menu = [
    Menu(
      id: 0,
      key: const Key("佚佚黑客《阻斷服務攻擊》"),
      label: "阻斷服務攻擊",
      icon: Icons.cloud_off,
    ),
    Menu(
      id: 1,
      key: const Key("佚佚黑客《蓝牙实用》"),
      label: "蓝牙实用",
      icon: Icons.bluetooth_disabled_sharp,
    ),
    Menu(
      id: 2,
      key: const Key("佚佚黑客《近场通信》"),
      label: "近场通信",
      icon: Icons.nfc_sharp,
    ),
    Menu(
      id: 3,
      key: const Key("佚佚黑客《加密聊天室》"),
      label: "加密聊天室",
      icon: Icons.mark_chat_unread_sharp,
    ),
  ];
}
